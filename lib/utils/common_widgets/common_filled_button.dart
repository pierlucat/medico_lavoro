import 'package:flutter/material.dart';

class CommonFilledButton extends StatelessWidget {
  final String text;
  const CommonFilledButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
