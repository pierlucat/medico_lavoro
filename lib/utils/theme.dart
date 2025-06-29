import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'breakpoint_utils.dart';

class BreakpointData {
  final double start;
  final double end;
  final String name;
  const BreakpointData({
    required this.start,
    required this.end,
    required this.name,
  });
}

class ColorUtils {
  static const accentColor = 0xFF1470AF;
  static const lightAccentColor = 0xFF0A3A5D;
  static const primaryColor = 0xFFD0E2F4;
  static const lighterPrimaryColor = 0xFFE3EEFA;
  // static const primaryColor = 0xFF8EB6DD;
  static const secondaryColor = 0xFFFDF0D5;
  static const backgroundGrey = 0xFFEAEAEE;
  static const accentBackgroundGrey = 0xFFE4E4E4;
  static const footerBackground = 0xFF041F31;
  static const footerText = 0xFF879293;
}

class SizingUtils {
  //XS -> mobile
  //S -> tablet
  //M -> tablet/desktop finestra piccola
  //L -> desktop finestra grande

  static const double spaceL = 100;
  static const double spaceM = 50;
  static const double spaceS = 30;
  static const double spaceXS = 30;

  //margine destro e sinistro della pagina
  static const double leftRightMarginL = 60;
  static const double leftRightMarginM = 30;
  static const double leftRightMarginS = 20;
  static const double leftRightMarginXS = 20;

  //altezza della top bar
  static const double topBarHeightXS = 60;
  static const double topBarHeightS = 80;
  static const double topBarHeightM = 80;
  static const double topBarHeightL = 100;

  //font size
  static const double sectionContentTitleL = 70;
  static const double sectionContentTitleM = 50;
  static const double sectionContentTitleS = 40;
  static const double sectionContentTitleXS = 30;

  static const double bodyTextL = 16;
  static const double bodyTextM = 14;
  static const double bodyTextS = 12;
  static const double bodyTextXS = 12;

  static const double footerTitleTextL = 18;
  static const double footerTitleTextM = 16;
  static const double footerTitleTextS = 14;
  static const double footerTitleTextXS = 14;

  static const double accordionTitleTextL = 32;
  static const double accordionTitleTextM = 27;
  static const double accordionTitleTextS = 22;
  static const double accordionTitleTextXS = 17;

  static Widget spacerFunc(BuildContext context) {
    return SizedBox(
      height: BreakpointUtils.getResponsiveValue<double>(
        context,
        [
          SizingUtils.spaceXS,
          SizingUtils.spaceS,
          SizingUtils.spaceM,
          SizingUtils.spaceL,
        ],
      ),
    );
  }

  static double spaceValueFunc(BuildContext context) {
    return BreakpointUtils.getResponsiveValue<double>(
      context,
      [
        SizingUtils.spaceXS,
        SizingUtils.spaceS,
        SizingUtils.spaceM,
        SizingUtils.spaceL,
      ],
    );
  }
}

class ThemeUtils {
  static TextStyle get logo => TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: theme.colorScheme.primary,
      );
  static TextStyle get title => const TextStyle(
        fontSize: 30,
        //fontWeight: FontWeight.bold,
      );
  static TextStyle get subtitle => const TextStyle(
        fontSize: 18,
        //fontWeight: FontWeight.bold,
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
  static TextStyle get sectionContentTitle => TextStyle(
        fontSize: 70,
        height: 1.0,
        //color: theme.colorScheme.primary,
        //fontWeight: FontWeight.bold,
      );
  static TextStyle get bodyText => const TextStyle(
        fontSize: 16,
        color: Colors.black,
      );
  static TextStyle bodyTextFunc(BuildContext context) {
    return TextStyle(
      fontSize: BreakpointUtils.getResponsiveValue<double>(
        context,
        [
          SizingUtils.bodyTextXS,
          SizingUtils.bodyTextS,
          SizingUtils.bodyTextM,
          SizingUtils.bodyTextL,
        ],
      ),
      color: Colors.black,
    );
  }

  static double bodyTextSizeFunc(BuildContext context) {
    return BreakpointUtils.getResponsiveValue<double>(
      context,
      [
        SizingUtils.bodyTextXS,
        SizingUtils.bodyTextS,
        SizingUtils.bodyTextM,
        SizingUtils.bodyTextL,
      ],
    );
  }

  static TextStyle footerTitleTextFunc(BuildContext context) {
    return TextStyle(
      fontSize: BreakpointUtils.getResponsiveValue<double>(
        context,
        [
          SizingUtils.footerTitleTextXS,
          SizingUtils.footerTitleTextS,
          SizingUtils.footerTitleTextM,
          SizingUtils.footerTitleTextL,
        ],
      ),
      color: Color(ColorUtils.footerText),
    );
  }

  static TextStyle footerBodyTextFunc(BuildContext context) {
    return TextStyle(
      fontSize: BreakpointUtils.getResponsiveValue<double>(
        context,
        [
          SizingUtils.bodyTextXS,
          SizingUtils.bodyTextS,
          SizingUtils.bodyTextM,
          SizingUtils.bodyTextL,
        ],
      ),
      color: Color(ColorUtils.footerText),
    );
  }

  static double accordionIconSizeValue(BuildContext context) {
    return BreakpointUtils.getResponsiveValue<double>(
      context,
      [
        SizingUtils.accordionTitleTextXS,
        SizingUtils.accordionTitleTextS,
        SizingUtils.accordionTitleTextM,
        SizingUtils.accordionTitleTextL,
      ],
    );
  }

  static TextStyle accordionTitleTextSizeFunc(BuildContext context) {
    return TextStyle(
      fontSize: BreakpointUtils.getResponsiveValue<double>(
        context,
        [
          SizingUtils.accordionTitleTextXS,
          SizingUtils.accordionTitleTextS,
          SizingUtils.accordionTitleTextM,
          SizingUtils.accordionTitleTextL,
        ],
      ),
      color: Color(ColorUtils.accentColor),
    );
  }

  static TextStyle get footerTextStryle => const TextStyle(
        fontSize: 16,
        color: Color(ColorUtils.footerText),
      );

  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.roboto().fontFamily,
        colorScheme: const ColorScheme.light(
          primary: Color(ColorUtils.primaryColor),
        ),
      );
}
