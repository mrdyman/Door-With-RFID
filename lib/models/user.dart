import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:objectbox/objectbox.dart';

part 'user.freezed.dart';
part 'user.g.dart';

List<User> listUserFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String listUserToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class User with _$User {
  @Entity(realClass: User)
  const factory User({
    @Id(assignable: true) int? id,
    required String name,
    required String position,
    required String uuid,
    String? key,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
