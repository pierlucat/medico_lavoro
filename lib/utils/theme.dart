import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeUtils {
  static TextStyle get logo => TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: theme.colorScheme.primary,
      );
  static TextStyle get title => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get content => const TextStyle(
        fontSize: 20,
        color: Colors.black87,
      );
  static TextStyle get homeContentTitle => TextStyle(
        fontSize: 48,
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get homeContentSubtitle => const TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get headerButton => const TextStyle(
        fontSize: 18,
      );
  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.anekLatin().fontFamily,
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF053D84),
        ),
      );
}
