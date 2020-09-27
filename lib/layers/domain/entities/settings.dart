import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'settings.g.dart';

@JsonSerializable()
class SettingsResponse {
  @JsonKey(name: 'result')
  final Settings result;

  const SettingsResponse({
    @required this.result,
  });

  factory SettingsResponse.fromJson(Map<String, dynamic> json) => _$SettingsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsResponseToJson(this);
}

@JsonSerializable()
class Settings {
  @JsonKey(name: 'max_message_length')
  final int maxMessageLength;

  @JsonKey(name: 'max_room_title_length')
  final int maxRoomTitleLength;

  @JsonKey(name: 'max_username_length')
  final int maxUsernameLength;

  @JsonKey(name: 'uptime')
  final int uptime;

  const Settings({
    @required this.maxMessageLength,
    @required this.maxRoomTitleLength,
    @required this.maxUsernameLength,
    @required this.uptime,
  });

  factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsToJson(this);
}
