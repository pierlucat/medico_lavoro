import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/servizi/servizi_content.dart';

import '../page_content/our_services/our_services.dart';

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
