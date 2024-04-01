import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/contact_us/contact_us.dart';
import 'package:medico_lavoro/page_content/contact_us/contact_us_form.dart';
import 'package:medico_lavoro/page_content/contact_us/contact_us_info.dart';
import 'package:medico_lavoro/page_content/activities/activities.dart';
import 'package:medico_lavoro/page_content/home/home_content.dart';
import 'package:medico_lavoro/page_content/associates/associates.dart';
import 'package:medico_lavoro/page_content/who_we_are/who_we_are.dart';
import 'package:medico_lavoro/utils/classes/page_navigation.dart';
import 'package:medico_lavoro/utils/common_widgets/content_section.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../footer/footer.dart';

class PageContent extends StatelessWidget {
  final sectionVerticalSeparation = 100.0;
  final sectionHorizontalSeparation = 0.0;
  final PageNavigation pageNavigation;
  const PageContent({super.key, required this.pageNavigation});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(ColorUtils.accentColor),
      ),
      child: Column(
        children: [
          HomeContent(
            key: pageNavigation.sectionKeys![Sections.home]!,
          ),
          Introduction(),
          SizedBox(
            height: sectionVerticalSeparation,
          ),
          // ContentSection(
          //   horizontalMargin: sectionHorizontalSeparation,
          //   widget: WhoWeAre(
          //     key: pageNavigation.sectionKeys![Sections.whoWeAre]!,
          //   ),
          // ),
          // SizedBox(
          //   height: sectionVerticalSeparation,
          // ),
          // ContentSection(
          //   horizontalMargin: sectionHorizontalSeparation,
          //   widget: Associates(
          //     key: pageNavigation.sectionKeys![Sections.associates]!,
          //   ),
          // ),
          // SizedBox(
          //   height: sectionVerticalSeparation,
          // ),
          // ContentSection(
          //   horizontalMargin: sectionHorizontalSeparation,
          //   widget: Activities(
          //     key: pageNavigation.sectionKeys![Sections.activities]!,
          //   ),
          // ),
          // SizedBox(
          //   height: sectionVerticalSeparation,
          // ),
          ContentSection(
            widget: ContactUs(
              key: pageNavigation.sectionKeys![Sections.contacts]!,
            ),
          ),
          SizedBox(
            height: sectionVerticalSeparation,
          ),
          Footer(),
        ],
      ),
    );
  }
}
