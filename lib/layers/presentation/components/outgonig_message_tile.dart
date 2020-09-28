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
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 0,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: designSystem.color.lightGray,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(35),
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
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
