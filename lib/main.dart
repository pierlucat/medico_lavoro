import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/base_layout/app_bar/header_appbar.dart';
import 'package:medico_lavoro/pages/chi_siamo.dart';
import 'package:medico_lavoro/pages/home.dart';
import 'package:medico_lavoro/utils/breakpoint_utils.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:medico_lavoro/utils/router_utils.dart';

import 'base_layout/app_bar/header_text_button.dart';
import 'utils/theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouterUtils.router,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: BreakpointUtils.appBreakpointsList,
      ),
      theme: ThemeUtils.theme,
    );
  }
}
