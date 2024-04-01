import 'package:flutter/material.dart';
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
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 2,
            offset: const Offset(0, 0.5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Logo(),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 2,
                        color: Color(ColorUtils.accentColor),
                      ),
                      SizedBox(width: 10),
                      title.Title(),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                HeaderTextButton(
                  text: 'Home',
                  keyToSection: pageNavigation.sectionKeys?[Sections.home],
                ),
                HeaderTextButton(
                  text: 'Chi siamo',
                  keyToSection: pageNavigation.sectionKeys?[Sections.whoWeAre],
                ),
                HeaderTextButton(
                  text: 'Associati',
                  keyToSection:
                      pageNavigation.sectionKeys?[Sections.associates],
                ),
                HeaderTextButton(
                  text: 'Servizi',
                  keyToSection:
                      pageNavigation.sectionKeys?[Sections.activities],
                ),
                HeaderTextButton(
                  text: 'Contattaci',
                  keyToSection: pageNavigation.sectionKeys?[Sections.contacts],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
