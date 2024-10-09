import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/contact_us/contact_us.dart';
import 'package:medico_lavoro/page_content/home/home_content.dart';
import 'package:medico_lavoro/page_content/our_place/our_place.dart';
import 'package:medico_lavoro/page_content/our_services/our_services.dart';
import 'package:medico_lavoro/utils/classes/page_navigation.dart';

import '../footer/footer.dart';

class PageContent extends StatelessWidget {
  final PageNavigation pageNavigation;
  const PageContent({super.key, required this.pageNavigation});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeContent(
          key: pageNavigation.sectionKeys![Sections.home]!,
        ),
        SizedBox(
          height: 75,
        ),
        OurServices(),
        SizedBox(
          height: 75,
        ),
        OurPlace(),
        SizedBox(
          height: 75,
        ),
        ContactUs(
          key: pageNavigation.sectionKeys![Sections.contacts]!,
        ),
        SizedBox(
          height: 75,
        ),
        Footer(),
      ],
    );
  }
}
