import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

@freezed
abstract class SettingsResponse with _$SettingsResponse {
  factory SettingsResponse({
    @JsonKey(name: 'result') Settings result,
  }) = _SettingsResponse;

  factory SettingsResponse.fromJson(Map<String, dynamic> json) => _$SettingsResponseFromJson(json);
}

@freezed
abstract class Settings with _$Settings {
  factory Settings({
    @JsonKey(name: 'max_message_length') int maxMessageLength,
    @JsonKey(name: 'max_room_title_length') int maxRoomTitleLength,
    @JsonKey(name: 'max_username_length') int maxUsernameLength,
    @JsonKey(name: 'uptime') int uptime,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
}
