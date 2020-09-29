import 'package:flutter/material.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';

class ErrorPlaceholder extends StatelessWidget {
  final String message;

  const ErrorPlaceholder({
    Key key,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final designSystem = DesignSystem.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.warning,
          size: 50,
          color: designSystem.color.blue,
        ),
        const SizedBox(height: 25),
        Text(
          message,
          style: designSystem.text.infoMessage,
        )
      ],
    );
  }
}
