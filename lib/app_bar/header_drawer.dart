import 'package:flutter/material.dart';
import 'package:medico_lavoro/app_bar/header_appbar.dart';
import 'package:medico_lavoro/app_bar/header_text_button.dart';
import 'package:medico_lavoro/utils/classes/page_navigation.dart';

class HeaderDrawer extends StatefulWidget {
  final PageNavigation pageNavigation;

  const HeaderDrawer({
    super.key,
    required this.pageNavigation,
  });

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  bool isMenuOpen = false;

  void toggleDrawer() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Material(
      child: Stack(
        children: <Widget>[
          // Contenuto principale della tua app
          const HeaderLogo(),
          // Drawer (Menu)
          AnimatedPositioned(
            duration: Duration(milliseconds: 250),
            left: isMenuOpen
                ? 0
                : -250, // Modifica questa linea per controllare la posizione
            top: 0,
            bottom: 0,
            child: Container(
              width: 250,
              color: Colors.blue,
              child: ListView(
                children: [
                  SizedBox(
                    height: 21,
                  ),
                  HeaderTextButton(
                    text: 'Home',
                    keyToSection:
                        widget.pageNavigation.sectionKeys?[Sections.home],
                  ),
                  HeaderTextButton(
                    text: 'Chi siamo',
                    keyToSection:
                        widget.pageNavigation.sectionKeys?[Sections.whoWeAre],
                  ),
                  HeaderTextButton(
                    text: 'Associati',
                    keyToSection:
                        widget.pageNavigation.sectionKeys?[Sections.associates],
                  ),
                  HeaderTextButton(
                    text: 'Servizi',
                    keyToSection:
                        widget.pageNavigation.sectionKeys?[Sections.activities],
                  ),
                  HeaderTextButton(
                    text: 'Contattaci',
                    keyToSection:
                        widget.pageNavigation.sectionKeys?[Sections.contacts],
                  ),
                ],
              ),
            ),
          ),
          // Bottone per aprire/chiudere il menu
          SafeArea(
            child: IconButton(
              icon: Icon(
                isMenuOpen ? Icons.close : Icons.menu,
                color: Theme.of(context).colorScheme.primary,
                size: 25,
              ),
              onPressed: toggleDrawer,
            ),
          ),
        ],
      ),
    );
  }
}
