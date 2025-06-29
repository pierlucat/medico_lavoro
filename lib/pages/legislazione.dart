import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/legislazione/legislazione_content.dart';

class Legislazione extends StatelessWidget {
  const Legislazione({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            LegislazioneContent(),
          ],
        ),
      ),
    );
  }
}
