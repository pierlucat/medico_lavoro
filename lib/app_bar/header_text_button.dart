import 'package:flutter/material.dart';

import '../utils/theme.dart';

class HeaderTextButton extends StatefulWidget {
  final String text;
  final GlobalKey? keyToSection;
  const HeaderTextButton({
    super.key,
    required this.text,
    this.keyToSection,
  });

  @override
  State<HeaderTextButton> createState() => _HeaderTextButtonState();
}

class _HeaderTextButtonState extends State<HeaderTextButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {
          Scrollable.ensureVisible(
            duration: const Duration(
              milliseconds: 500,
            ),
            widget.keyToSection!.currentContext!,
          );
        },
        child: Text(
          widget.text,
          style: ThemeUtils.headerButton,
        ),
      ),
    );
  }
}
