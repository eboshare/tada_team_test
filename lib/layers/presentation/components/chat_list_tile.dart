import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tada_team_test/generated/l10n.dart';
import 'package:tada_team_test/layers/domain/entities/room.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';

class ChatListTile extends StatelessWidget {
  final Room room;

  const ChatListTile({
    Key key,
    this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final designSystem = DesignSystem.of(context);
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: designSystem.color.lightGray,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.photo_camera,
              color: designSystem.color.gray.withOpacity(0.5),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        room.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: designSystem.text.chatListTileUsername,
                      ),
                      Text(
                        room.lastMessage.text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: designSystem.text.chatListTileLastMessageText,
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 40),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      _formatDateTime(context, room.lastMessage.createdAt),
                      style: designSystem.text.chatListTileLastMessageTime,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDateTime(BuildContext context, DateTime dateTime) {
    final dateTimeFormat = DateFormat(S.of(context).chatListTileTime);
    return dateTimeFormat.format(dateTime);
  }
}
