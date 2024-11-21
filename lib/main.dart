import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/app_bar/header_appbar.dart';
import 'package:medico_lavoro/app_bar/header_drawer.dart';
import 'package:medico_lavoro/utils/classes/page_navigation.dart';

import 'page_content/page_content.dart';
import 'utils/theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final navigationsKeys = PageNavigation();

  @override
  Widget build(BuildContext context) {
    bool isMobileWidth = MediaQuery.of(context).size.width < 600;
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(
              100.0), // qui puoi definire l'altezza dell'AppBar
          child: Expanded(
            child: AppBar(
              toolbarHeight: 100,
              actions: [
                HeaderAppBar(
                  pageNavigation: navigationsKeys,
                  isMobileWidth: isMobileWidth,
                ),
              ],
            ),
          ),
        ),
        drawer: isMobileWidth
            ? HeaderDrawer(pageNavigation: navigationsKeys)
            : null,
        body: SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: PageContent(
              pageNavigation: navigationsKeys,
            ),
          ),
        ),
      ),
      theme: ThemeUtils.theme,
    );
  }
}
