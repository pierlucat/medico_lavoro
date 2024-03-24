import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/app_bar/header_appbar.dart';
import 'package:medico_lavoro/page_content/contact_us/contact_us.dart';

import 'app_bar/logo.dart';
import 'app_bar/title.dart' as title;
import 'page_content/page_content.dart';
import 'utils/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            //AppBar
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: PageContent(),
                ),
              ),
            ),
            Positioned(top: 0, child: HeaderAppBar()),
          ],
        ),
      ),
      theme: ThemeUtils.theme,
    );
  }
}
