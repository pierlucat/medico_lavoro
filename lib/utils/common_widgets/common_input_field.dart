import 'package:flutter/material.dart';

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
        hintText: label,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color(ColorUtils.footerText),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color(ColorUtils.footerText).withOpacity(0.3),
          ),
        ),
        border: OutlineInputBorder(),
      ),
      keyboardType: textInputType,
      maxLines: maxLines,
    );
  }
}
