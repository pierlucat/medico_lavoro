import 'package:flutter/material.dart';

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/fb.png",
          height: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/in.png",
          height: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/ld.png",
          height: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/wa.png",
          height: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/tw.png",
          height: 30,
        ),
      ],
    );
  }
}
