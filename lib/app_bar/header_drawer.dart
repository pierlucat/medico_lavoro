import 'package:flutter/material.dart';
import 'package:medico_lavoro/app_bar/header_text_button.dart';
import 'package:medico_lavoro/utils/classes/page_navigation.dart';

class HeaderDrawer extends StatelessWidget {
  final PageNavigation pageNavigation;
  const HeaderDrawer({
    super.key,
    required this.pageNavigation,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 21,
          ),
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
            keyToSection: pageNavigation.sectionKeys?[Sections.associates],
          ),
          HeaderTextButton(
            text: 'Servizi',
            keyToSection: pageNavigation.sectionKeys?[Sections.activities],
          ),
          HeaderTextButton(
            text: 'Contattaci',
            keyToSection: pageNavigation.sectionKeys?[Sections.contacts],
          ),
        ],
      ),
    );
  }
}
