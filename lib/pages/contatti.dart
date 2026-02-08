import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/servizi/servizi_content.dart';

import '../page_content/contatti/contatti_content.dart';
import '../page_content/home_page/section_2/home_page_section_2.dart';

class Contatti extends StatelessWidget {
  const Contatti({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: ContattiContent(),
      ),
    );
  }
}
