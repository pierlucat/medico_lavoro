import 'package:flutter/material.dart';
import 'package:medico_lavoro/app_bar/header_drawer.dart';
import 'package:medico_lavoro/app_bar/header_text_button.dart';
import 'package:medico_lavoro/utils/classes/page_navigation.dart';
import 'package:medico_lavoro/utils/theme.dart';

import 'logo.dart';
import 'title.dart' as title;

class HeaderAppBar extends StatelessWidget {
  final PageNavigation pageNavigation;
  const HeaderAppBar({
    super.key,
    required this.pageNavigation,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: SizingUtils.topBarHeight,
        decoration: BoxDecoration(
          color: Color(ColorUtils.primaryColor),
        ),
        padding: const EdgeInsets.only(
          left: SizingUtils.leftRightMargin,
          right: SizingUtils.leftRightMargin,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1500,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeaderLogo(),
              HeaderActions(
                pageNavigation: pageNavigation,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Studio Toscanetti',
          style: ThemeUtils.title,
        ),
        SizedBox(width: 10),
        Container(
          height: 32,
          width: 2,
          color: Color(ColorUtils.accentColor),
        ),
        SizedBox(width: 10),
        Text(
          'Medicina del lavoro',
          style: ThemeUtils.subtitle,
        ),
      ],
    );
  }
}

class HeaderActions extends StatelessWidget {
  final PageNavigation pageNavigation;

  const HeaderActions({
    super.key,
    required this.pageNavigation,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderTextButton(
          text: 'Home',
          keyToSection: pageNavigation.sectionKeys?[Sections.home],
        ),
        SizedBox(width: 40),
        HeaderTextButton(
          text: 'Chi siamo',
          keyToSection: pageNavigation.sectionKeys?[Sections.whoWeAre],
        ),
        SizedBox(width: 40),
        HeaderTextButton(
          text: 'Associati',
          keyToSection: pageNavigation.sectionKeys?[Sections.associates],
        ),
        SizedBox(width: 40),
        HeaderTextButton(
          text: 'Servizi',
          keyToSection: pageNavigation.sectionKeys?[Sections.activities],
        ),
        SizedBox(width: 40),
        HeaderTextButton(
          text: 'Contattaci',
          keyToSection: pageNavigation.sectionKeys?[Sections.contacts],
        ),
      ],
    );
  }
}
