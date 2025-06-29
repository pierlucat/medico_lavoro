import 'package:flutter/material.dart';

import '../breakpoint_utils.dart';
import '../theme.dart';

class CommonInputField extends StatelessWidget {
  final String label;
  final TextInputType? textInputType;
  final int? maxLines;
  const CommonInputField({
    super.key,
    this.textInputType,
    required this.label,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color(ColorUtils.accentColor),
      decoration: InputDecoration(
        fillColor: Color(0xFFF7F7F7),
        filled: true,
        hintStyle: ThemeUtils.bodyText.copyWith(
          color: Colors.black38,
          fontSize: BreakpointUtils.getResponsiveValue<double>(
            context,
            [
              SizingUtils.bodyTextXS,
              SizingUtils.bodyTextS,
              SizingUtils.bodyTextM,
              SizingUtils.bodyTextL,
            ],
          ),
        ),
        hintText: label,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            width: 1,
            color: Color(ColorUtils.accentColor),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(ColorUtils.accentColor),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
        ),
      ),
      keyboardType: textInputType,
      maxLines: maxLines,
    );
  }
}
