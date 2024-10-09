import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/app_bar/header_appbar.dart';
import 'package:medico_lavoro/page_content/contact_us/contact_us.dart';
import 'package:medico_lavoro/utils/classes/page_navigation.dart';

import 'app_bar/logo.dart';
import 'app_bar/title.dart' as title;
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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(ColorUtils.primaryColor),
        body: Stack(
          children: [
            //AppBar
            Positioned(
              top: SizingUtils.topBarHeight,
              left: 0,
              right: 0,
              child: Container(
                color: Color(ColorUtils.backgroundGrey),
                height: MediaQuery.of(context).size.height -
                    SizingUtils.topBarHeight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: PageContent(
                    pageNavigation: navigationsKeys,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: HeaderAppBar(
                pageNavigation: navigationsKeys,
              ),
            ),
          ],
        ),
      ),
      theme: ThemeUtils.theme,
    );
  }
}
