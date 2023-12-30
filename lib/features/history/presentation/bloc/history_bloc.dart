import 'package:door_with_rfid/features/history/domain/entities/user_detail.dart';
import 'package:door_with_rfid/models/helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/history.dart';
import '../../../../models/user.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  List<UserDetail> histories = [];
  HistoryBloc() : super(const _Initial()) {
    on<_Started>((event, emit) {
      histories.clear();
      List<History> historyResult = DbHelper.getHistory();
      List<User> userResult = DbHelper.getUser();
      for (var item in historyResult) {
        List<User> currentUser =
            userResult.where((e) => e.uuid == item.uuid).toList();

        histories.add(UserDetail(
          uuid: item.uuid,
          name: currentUser.first.name,
          position: currentUser.first.position,
          dateTime: item.dateTime,
        ));
      }
    });
  }
}
