import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/home_page/section_3/home_page_section_3.dart';
import 'package:medico_lavoro/page_content/home_page/section_4/home_page_section_4.dart';

import '../base_layout/footer/footer.dart';
import '../page_content/home_page/section_1/home_page_section_1.dart';
import '../page_content/home_page/section_2/home_page_section_2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomePageSection1(),
          HomePageSection2(),
          HomePageSection3(),
          HomePageSection4(),
          Footer(),
        ],
      ),
    );
  }
}
