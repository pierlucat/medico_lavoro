import 'package:flutter/material.dart';

import '../utils/theme.dart';

class HeaderTextButton extends StatefulWidget {
  final String text;
  const HeaderTextButton({
    super.key,
    required this.text,
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
        onPressed: () {},
        child: Text(
          widget.text,
          style: ThemeUtils.headerButton,
        ),
      ),
    );
  }
}
