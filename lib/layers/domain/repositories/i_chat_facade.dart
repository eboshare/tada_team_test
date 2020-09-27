import 'package:tada_team_test/layers/domain/repositories/i_chat_client.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_service.dart';

abstract class IChatFacade implements IChatService, IChatClient {}
