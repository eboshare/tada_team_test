import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room/room.dart';
import 'package:tada_team_test/layers/domain/entities/settings/settings.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_client.dart';

part 'nane_chat_http_client.g.dart';

@Singleton(as: IChatClient)
@RestApi(baseUrl: 'https://nane.tada.team/api')
abstract class NaneChatHttpClient implements IChatClient {
  @factoryMethod
  factory NaneChatHttpClient(Dio dio) = _NaneChatHttpClient;

  @override
  @GET('/settings')
  Future<SettingsResponse> getSettings();

  @override
  @GET('/rooms')
  Future<RoomListResponse> getRoomList();

  @override
  @GET('/rooms/{roomName}/history')
  Future<IncomingMessageListResponse> getMessageHistory(@Path() String roomName);
}
