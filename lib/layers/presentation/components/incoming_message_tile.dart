import 'package:flutter/material.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';
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
    final bigRadius = Radius.circular(designSystem.dimension.bubbleRadius);
    return Container(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: designSystem.color.blue,
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(10),
            topLeft: bigRadius,
            topRight: bigRadius,
            bottomRight: bigRadius,
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
