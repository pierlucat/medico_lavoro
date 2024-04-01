import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class CommonFilledButton extends StatelessWidget {
  final String text;
  Function? callBack;
  ButtonStyle? buttonStyle;
  CommonFilledButton({
    super.key,
    required this.text,
    this.callBack,
    this.buttonStyle,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: buttonStyle,
      onPressed: () {
        if (callBack != null) {
          callBack!();
        }
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
