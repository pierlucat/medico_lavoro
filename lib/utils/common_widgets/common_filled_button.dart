import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../breakpoint_utils.dart';

class CommonFilledButton extends StatelessWidget {
  final String text;
  Function? callBack;
  ButtonStyle? buttonStyle;
  Color? textColor;
  CommonFilledButton({
    super.key,
    required this.text,
    this.callBack,
    this.buttonStyle,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 60,
      child: FilledButton(
        style: buttonStyle ??
            ButtonStyle(
              elevation: WidgetStatePropertyAll(
                5,
              ),
              backgroundColor: WidgetStatePropertyAll(
                Colors.black,
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    SizingUtils.radiusRectangle,
                  ),
                ),
              ),
            ),
        onPressed: () {
          if (callBack != null) {
            callBack!();
          }
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: textColor ??
                Color(
                  ColorUtils.primaryColor,
                ),
          ),
        ),
      ),
    );
  }
}
