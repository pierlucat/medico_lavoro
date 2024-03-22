import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/home/home_content.dart';
import 'package:medico_lavoro/page_content/associates/associates.dart';
import 'package:medico_lavoro/page_content/who_we_are/who_we_are.dart';

class PageContent extends StatelessWidget {
  const PageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeContent(),
        WhoWeAre(),
        Associates(),
      ],
    );
  }
}
