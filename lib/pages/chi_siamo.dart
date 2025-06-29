import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/chi_siamo/chi_siamo_content.dart';
import 'package:medico_lavoro/page_content/who_we_are/who_we_are.dart';

class ChiSiamo extends StatelessWidget {
  const ChiSiamo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ChiSiamoContent(),
          ],
        ),
      ),
    );
  }
}
