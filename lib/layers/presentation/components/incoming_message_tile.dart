import 'package:flutter/material.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';

class IncomingMessageTile extends StatelessWidget {
  final IncomingMessage message;

  const IncomingMessageTile({
    Key key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final designSystem = DesignSystem.of(context);
    return Container(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: designSystem.color.blue,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.text,
              style: designSystem.text.incomingMessageText,
            ),
            const SizedBox(height: 5),
            Text(
              message.sender.username,
              style: designSystem.text.incomingMessageSender,
            ),
          ],
        ),
      ),
    );
  }
}
