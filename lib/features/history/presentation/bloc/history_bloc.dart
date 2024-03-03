import 'package:door_with_rfid/features/history/domain/entities/user_detail.dart';
import 'package:door_with_rfid/models/helper.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/history.dart';
import '../../../../models/user.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  List<UserDetail> histories = [];

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();

  final TextEditingController dateFilterTEC = TextEditingController();

  HistoryBloc() : super(const _Initial()) {
    on<_Started>((event, emit) {
      emit(const _Initial());
      histories.clear();
      List<History> historyResult = DbHelper.getHistory();
      List<User> userResult = DbHelper.getUser();
      for (var item in historyResult) {
        List<User> currentUser =
            userResult.where((e) => e.uuid == item.uuid).toList();

        if (currentUser.isNotEmpty) {
          histories.add(UserDetail(
            uuid: item.uuid,
            name: currentUser.first.name,
            position: currentUser.first.position,
            dateTime: item.dateTime,
            activity: item.activity,
          ));
        } else {
          histories.add(UserDetail(
            uuid: item.uuid,
            name: "Unknown",
            position: "Unknown",
            dateTime: item.dateTime,
            activity: item.activity,
          ));
        }
      }

      if (dateFilterTEC.text.isNotEmpty) {
        List<UserDetail> result = histories.where((e) {
          DateTime historyDate =
              DateTime(e.dateTime.year, e.dateTime.month, e.dateTime.day);
          DateTime fromDate =
              DateTime(startDate.year, startDate.month, startDate.day);
          DateTime toDate = DateTime(endDate.year, endDate.month, endDate.day);

          bool isAfterOrSameAsFrom = historyDate.isAfter(fromDate) ||
              historyDate.isAtSameMomentAs(fromDate);
          bool isBeforeOrSameAsTo = historyDate.isBefore(toDate) ||
              historyDate.isAtSameMomentAs(toDate);

          return isAfterOrSameAsFrom && isBeforeOrSameAsTo;
        }).toList();
        histories.clear();
        histories.addAll(result);
      }

      histories.sort((a, b) => b.dateTime.compareTo(a.dateTime));
      emit(const _Loaded());
    });
  }
}
