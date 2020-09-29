import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sender.g.dart';
part 'sender.freezed.dart';

@freezed
abstract class Sender with _$Sender {
  factory Sender({
    @JsonKey(name: 'username') @required String username,
  }) = _Sender;

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);
}