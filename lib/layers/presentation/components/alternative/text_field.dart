import 'package:flutter/material.dart';

import 'package:tada_team_test/generated/l10n.dart';
import 'package:tada_team_test/utils/extensions.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';

class ATextField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String text) onSubmitted;
  final Widget placeholder;
  final TextAlign textAlign;
  final TextStyle inputTextStyle;
  final AlignmentGeometry placeholderAlignment;

  const ATextField({
    Key key,
    @required this.controller,
    @required this.focusNode,
    @required this.inputTextStyle,
    this.onSubmitted,
    this.placeholder,
    this.textAlign = TextAlign.start,
    this.placeholderAlignment = AlignmentDirectional.topStart,
  }) : super(key: key);

  @override
  _ATextFieldState createState() => _ATextFieldState();
}

class _ATextFieldState extends State<ATextField> {
  final _editableTextKey = GlobalKey<EditableTextState>();

  @override
  Widget build(BuildContext context) {
    final designSystem = DesignSystem.of(context);
    return GestureDetector(
      onTap: () {
        _editableTextKey.currentState?.requestKeyboard();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        color: designSystem.color.white,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 27,
            horizontal: 30,
          ),
          decoration: BoxDecoration(
            color: designSystem.color.whiteLilac,
            borderRadius: BorderRadius.circular(
              designSystem.dimension.bubbleRadius,
            ),
          ),
          child: Stack(
            alignment: widget.placeholderAlignment,
            children: [
              EditableText(
                key: _editableTextKey,
                controller: widget.controller,
                focusNode: widget.focusNode,
                onSubmitted: widget.onSubmitted,
                expands: false,
                textAlign: widget.textAlign,
                backgroundCursorColor: designSystem.color.blue,
                cursorColor: designSystem.color.blue,
                style: widget.inputTextStyle,
              ),
              if (widget.placeholder != null)
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: widget.controller,
                  builder: (context, value, _) {
                    return Container(
                      child: !value.text.isEmptyOrNull ? null : widget.placeholder,
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
