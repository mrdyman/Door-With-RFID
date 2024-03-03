import 'dart:async';

import 'package:door_with_rfid/di/injection_container.dart';
import 'package:door_with_rfid/features/history/presentation/bloc/history_bloc.dart';
import 'package:door_with_rfid/features/home/domain/entities/rfid.dart';
import 'package:door_with_rfid/models/helper.dart';
import 'package:door_with_rfid/models/history.dart';
import 'package:door_with_rfid/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PersistentTabController controller =
      PersistentTabController(initialIndex: 0);
  // FirebaseDatabase database = FirebaseDatabase.instance;
  List<Rfid> rfIds = [];
  List<User> users = [];

  final TextEditingController searchTEC = TextEditingController();

  HomeBloc() : super(const _Initial()) {
    Future<void> getDataRfId() async {
      List<User> userData = DbHelper.getUser();
      userData.sort((a, b) => b.id!.compareTo(a.id!));
      users.clear();
      users.addAll(userData);

      // DatabaseReference ref = FirebaseDatabase.instance.ref('data');
      // final remote = await ref.get();
      // if (remote.exists) {
      //   final remoteMap =
      //       jsonDecode((jsonEncode(remote.value))) as Map<String, dynamic>;
      //   rfIds = remoteMap.entries
      //       .map((entry) => Rfid.fromJson({entry.key: entry.value}))
      //       .toList();
      // }
    }

    on<_Started>((event, emit) async {
      emit(const _Initial());

      AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
        if (!isAllowed) {
          // This is just a basic example. For real apps, you must show some
          // friendly dialog box before call the request method.
          // This is very important to not harm the user experience
          AwesomeNotifications().requestPermissionToSendNotifications();
        }
      });

      // AwesomeNotifications().setListeners(
      //     onActionReceivedMethod: NotificationController.onActionReceivedMethod,
      //     onNotificationCreatedMethod:
      //         NotificationController.onNotificationCreatedMethod,
      //     onNotificationDisplayedMethod:
      //         NotificationController.onNotificationDisplayedMethod,
      //     onDismissActionReceivedMethod:
      //         NotificationController.onDismissActionReceivedMethod);

      add(const HomeEvent.getUsers());

      // DatabaseReference ref = FirebaseDatabase.instance.ref('data');
      // String key = ref.push().key!;
      // await ref.set({
      //   key: {
      //     "name": "Dyman",
      //     "position": "General Manager",
      //     "uuid": "xxxxxxxxx"
      //   },
      // });

      // DatabaseReference tmpRegisterRef = FirebaseDatabase.instance.ref();
      // await tmpRegisterRef.update({
      //   "tmpRegister": key,
      // });

      // ref.onValue.listen((event) {
      //   final data = event.snapshot.value;
      //   debugPrint(data.toString());
      // });
      emit(const _Loaded());

      DatabaseReference ref = FirebaseDatabase.instance.ref('isForceOpen');
      DatabaseReference dorLog = FirebaseDatabase.instance.ref('tmpUuid');
      // Create a Completer to await the stream subscription
      final completer = Completer<void>();
      ref.onValue.listen((event) {
        final data = event.snapshot.value;
        if (data == 1) {
          AwesomeNotifications().createNotification(
              content: NotificationContent(
            wakeUpScreen: true,
            id: 10,
            channelKey: 'basic_channel',
            actionType: ActionType.Default,
            title: 'WARNING!',
            body: 'Door Forced Open!',
          ));

          History history = History(
              activity: "Force Open Door",
              dateTime: DateTime.now(),
              uuid: "Unknown");

          DbHelper.putHistory(histories: [history]);
          sl.get<HistoryBloc>().add(const HistoryEvent.started());
          emit(const _Initial());
          emit(const _DoorForcedOpen());
        }
        debugPrint(data.toString());
      });

      dorLog.onValue.listen((event) {
        final data = event.snapshot.value;

        List<User> userResult = DbHelper.getUser(uuid: data.toString());

        if (userResult.isEmpty) {
          // user not registered

          return;
        }

        History history = History(
          activity: "Open Door",
          dateTime: DateTime.now(),
          uuid: data.toString(),
        );

        DbHelper.putHistory(histories: [history]);
        sl.get<HistoryBloc>().add(const HistoryEvent.started());
        emit(const _Initial());
        emit(const _DoorOpen());
      });

      await completer.future;
    });

    on<_DismissForceOpenDoor>((event, emit) async {
      DatabaseReference isForceOpen = FirebaseDatabase.instance.ref();
      await isForceOpen.update({
        "isForceOpen": 0,
      });
    });

    on<_GetUsers>((event, emit) async {
      emit(const _Initial());
      await getDataRfId();
      emit(const _Loaded());
    });

    on<_Search>((event, emit) async {
      emit(const _Initial());
      await getDataRfId();
      if (event.keyword.isNotEmpty) {
        users.retainWhere((e) =>
            e.name.toLowerCase().contains(event.keyword.toLowerCase()) ||
            e.uuid.toLowerCase().contains(event.keyword.toLowerCase()));
      }
      emit(const _Loaded());
    });

    on<_DeleteUser>((event, emit) async {
      emit(const _Initial());
      //delete data on local
      String key = "";
      List<User> usersToDelete = DbHelper.getUser(id: event.id);
      if (usersToDelete.isNotEmpty) {
        key = users.first.key!;
      }
      bool isLocalUserDeleted = await DbHelper.deleteUser(id: [event.id]);
      if (isLocalUserDeleted) {
        users.removeWhere((e) => e.id == event.id);
      }
      //delete data on firebase
      DatabaseReference dataToDelete =
          FirebaseDatabase.instance.ref('data/$key');
      await dataToDelete.remove();
      emit(const _UserDeleted());
    });
  }
}
