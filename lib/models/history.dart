import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'package:objectbox/objectbox.dart';

part 'history.freezed.dart';
part 'history.g.dart';

List<History> listHistoryFromJson(String str) =>
    List<History>.from(json.decode(str).map((x) => History.fromJson(x)));

String listHistoryToJson(List<History> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class History with _$History {
  @Entity(realClass: History)
  const factory History({
    @Id(assignable: true) int? id,
    required String activity,
    required DateTime dateTime,
    required String uuid,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
}
