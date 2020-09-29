// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsResponse _$_$_SettingsResponseFromJson(Map<String, dynamic> json) {
  return _$_SettingsResponse(
    result: json['result'] == null
        ? null
        : Settings.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SettingsResponseToJson(
        _$_SettingsResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.toJson(),
    };

_$_Settings _$_$_SettingsFromJson(Map<String, dynamic> json) {
  return _$_Settings(
    maxMessageLength: json['max_message_length'] as int,
    maxRoomTitleLength: json['max_room_title_length'] as int,
    maxUsernameLength: json['max_username_length'] as int,
    uptime: json['uptime'] as int,
  );
}

Map<String, dynamic> _$_$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'max_message_length': instance.maxMessageLength,
      'max_room_title_length': instance.maxRoomTitleLength,
      'max_username_length': instance.maxUsernameLength,
      'uptime': instance.uptime,
    };
