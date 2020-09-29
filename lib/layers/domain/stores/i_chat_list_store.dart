import 'package:tada_team_test/helper/constants.dart';
import 'package:tada_team_test/layers/domain/entities/room/room.dart';

abstract class IChatListStore {
  List<Room> get rooms;

  LoadingStatus get status;

  Future<void> loadRooms();
}
