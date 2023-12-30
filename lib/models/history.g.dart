// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_History _$$_HistoryFromJson(Map<String, dynamic> json) => _$_History(
      id: json['id'] as int?,
      activity: json['activity'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      uuid: json['uuid'] as String,
    );

Map<String, dynamic> _$$_HistoryToJson(_$_History instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activity': instance.activity,
      'dateTime': instance.dateTime.toIso8601String(),
      'uuid': instance.uuid,
    };
