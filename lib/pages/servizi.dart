import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/servizi/servizi_content.dart';

import 'home_page/section_2/home_page_section_2.dart';

class Servizi extends StatelessWidget {
  const Servizi({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ServiziContent(),
          ],
        ),
      ),
    );
  }
}
