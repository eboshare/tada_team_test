// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nane_chat_http_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _NaneChatHttpClient implements NaneChatHttpClient {
  _NaneChatHttpClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://nane.tada.team/api';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getSettings() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/settings',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SettingsResponse.fromJson(_result.data);
    return value;
  }

  @override
  getRoomList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request('/rooms',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = RoomListResponse.fromJson(_result.data);
    return value;
  }

  @override
  getMessageHistory(roomName) async {
    ArgumentError.checkNotNull(roomName, 'roomName');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/rooms/$roomName/history',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = IncomingMessageListResponse.fromJson(_result.data);
    return value;
  }
}
