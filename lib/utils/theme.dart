import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorUtils {
  static const accentColor = 0xFF70ABAF;
  static const lightAccentColor = 0xFFF5FAFA;
  static const primaryColor = 0xFF053D84;
  static const secondaryColor = 0xFFFDF0D5;
  static const backgroundGrey = 0xFFF3F3F3;
  static const accentBackgroundGrey = 0xFFE4E4E4;
  static const footerBackground = 0xFF1C2C2E;
  static const footerText = 0xFF879293;
}

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
  static TextStyle get contentSmall => const TextStyle(
        fontSize: 16,
        color: Colors.black87,
      );
  static TextStyle get contentBold => const TextStyle(
        fontSize: 20,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
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

  static TextStyle get footerTextStryle => const TextStyle(
        fontSize: 16,
        color: Color(ColorUtils.footerText),
      );

  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.anekLatin().fontFamily,
        colorScheme: const ColorScheme.light(
          primary: Color(ColorUtils.primaryColor),
        ),
      );
}
