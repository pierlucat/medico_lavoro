import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../breakpoint_utils.dart';

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
      width: BreakpointUtils.getResponsiveValue<double>(
        context,
        [
          140,
          140,
          180,
          220,
        ],
      ),
      height: BreakpointUtils.getResponsiveValue<double>(
        context,
        [
          40,
          40,
          50,
          60,
        ],
      ),
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
                fontSize: BreakpointUtils.getResponsiveValue<double>(
                  context,
                  [
                    14,
                    14,
                    16,
                    18,
                  ],
                ),
                color: Color(
                  ColorUtils.primaryColor,
                ),
              ),
        ),
      ),
    );
  }
}
