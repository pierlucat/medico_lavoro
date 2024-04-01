import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class ContentSection extends StatelessWidget {
  final Widget widget;
  final double horizontalMargin;
  final double verticalMargin;
  const ContentSection(
      {super.key,
      required this.widget,
      this.horizontalMargin = 25,
      this.verticalMargin = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: verticalMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(ColorUtils.backgroundGrey),
      ),
      child: widget,
    );
  }
}

class AccentContentSection extends StatelessWidget {
  final Widget widget;
  const AccentContentSection({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(ColorUtils.accentBackgroundGrey),
      ),
      child: widget,
    );
  }
}
