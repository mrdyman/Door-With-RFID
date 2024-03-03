import 'dart:convert';

import 'package:door_with_rfid/models/helper.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/user.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final TextEditingController fullNameTEC = TextEditingController();
  final TextEditingController positionTEC = TextEditingController();

  String fullNameError = "";
  String positionError = "";

  RegistrationBloc() : super(const _Initial()) {
    bool validate() {
      fullNameError = "";

      positionError = "";

      if (fullNameTEC.text.trim().isEmpty) {
        fullNameError = "Please input full name";
      }

      if (positionTEC.text.trim().isEmpty) {
        positionError = "Please input valid position";
      }

      if (fullNameError.isNotEmpty || positionError.isNotEmpty) {
        return false;
      }
      return true;
    }

    on<_Create>((event, emit) async {
      if (validate()) {
        emit(const _Registering());
        DatabaseReference ref = FirebaseDatabase.instance.ref('data');
        DatabaseReference registerStatus =
            FirebaseDatabase.instance.ref('isRegistering');
        String key = ref.push().key!;
        await ref.update({
          key: {
            "name": fullNameTEC.text.trim(),
            "position": positionTEC.text.trim(),
            "uuid": "unregistered"
          },
        });

        await registerStatus.set(1);

        DatabaseReference tmpRegisterRef = FirebaseDatabase.instance.ref();
        await tmpRegisterRef.update({
          "tmpRegister": key,
        });

        DatabaseReference finalData =
            FirebaseDatabase.instance.ref('data/$key');

        await finalData.onValue.listen((event) {
          final data = event.snapshot.value;
          if (data != null) {
            User result = User.fromJson(jsonDecode(jsonEncode(data)));
            if (result.uuid != "unregistered") {
              User user = User(
                  name: result.name,
                  position: result.position,
                  uuid: result.uuid,
                  key: key);

              bool isStored = DbHelper.putUser(users: [user]);
              if (isStored) {
                fullNameTEC.text = "";
                positionTEC.text = "";
                emit(const _RegisterSuccessfully());
              } else {
                emit(const _RegisterFailed());
              }
            }
          }
        }).asFuture();
      } else {
        emit(const _Error());
      }
    });
  }
}
