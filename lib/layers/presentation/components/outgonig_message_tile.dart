import 'package:flutter/material.dart';

import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';

class OutgoingMessageTile extends StatelessWidget {
  final IncomingMessage message;

  const OutgoingMessageTile({
    Key key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final designSystem = DesignSystem.of(context);
    final bigRadius = Radius.circular(designSystem.dimension.bubbleRadius);
    return Container(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: designSystem.color.lightGray,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: bigRadius,
            bottomLeft: bigRadius,
            bottomRight: bigRadius,
          ),
        ),
        child: Text(
          message.text,
          style: designSystem.text.outgoingMessageText,
        ),
      ),
    );
  }
}
