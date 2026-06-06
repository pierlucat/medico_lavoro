import 'package:flutter/material.dart';

import '../breakpoint_utils.dart';
import '../theme.dart';

class CommonInputField extends StatelessWidget {
  final String label;
  final TextInputType? textInputType;
  final int? maxLines;
  final TextEditingController? controller;
  // 1. Aggiungiamo la dichiarazione del validator
  final String? Function(String?)? validator;

  const CommonInputField({
    super.key,
    this.textInputType,
    required this.label,
    this.maxLines,
    this.controller,
    // 2. Lo aggiungiamo al costruttore
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // 3. Lo passiamo al TextFormField per abilitare la validazione
      validator: validator,
      cursorColor: Color(ColorUtils.accentColor),
      decoration: InputDecoration(
        fillColor: Color(0xFFF7F7F7),
        filled: true,
        hintStyle: ThemeUtils.bodyText.copyWith(
          color: Colors.black38,
          fontSize: SizingUtils.bodyTextL,
        ),
        hintText: label,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizingUtils.radiusRectangle),
          borderSide: BorderSide(
            width: 1,
            color: Color(ColorUtils.accentColor),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizingUtils.radiusRectangle),
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
        // 4. Aggiungiamo i bordi per lo stato di errore (rosso)
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizingUtils.radiusRectangle),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizingUtils.radiusRectangle),
          borderSide: const BorderSide(
            width: 1.5,
            color: Colors.red,
          ),
        ),
      ),
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
    );
  }
}
