import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class CommonFilledButton extends StatelessWidget {
  final String text;
  Function? callBack;
  ButtonStyle? buttonStyle;
  TextStyle? textStyle;
  CommonFilledButton({
    super.key,
    required this.text,
    this.callBack,
    this.buttonStyle,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220, // Imposta la larghezza desiderata
      height: 60, // Imposta l'altezza desiderata
      child: FilledButton(
        style: buttonStyle,
        onPressed: () {
          if (callBack != null) {
            callBack!();
          }
        },
        child: Text(
          text,
          style: textStyle ??
              TextStyle(
                fontSize: 18,
                color: Color(
                  ColorUtils.primaryColor,
                ),
              ),
        ),
      ),
    );
  }
}
