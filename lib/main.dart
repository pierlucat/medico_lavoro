import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/breakpoint_utils.dart';
import 'package:medico_lavoro/utils/router_utils.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Medico del Lavoro',
      theme: ThemeUtils.theme,
      routerConfig: GoRouterUtils.router,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: Builder(
          builder: (context) {
            return MaxWidthBox(
              maxWidth: 1920, // Limite massimo assoluto del layout desktop
              child: ResponsiveScaledBox(
                width: ResponsiveValue<double>(
                  context,
                  defaultValue: 450, // Default mobile layout width
                  conditionalValues: [
                    Condition.equals(name: MOBILE, value: 450),
                    Condition.between(start: 0, end: 800, value: 800),
                    Condition.between(start: 801, end: 1200, value: 1600),
                    Condition.between(start: 1201, end: 9999, value: 1920),
                  ],
                ).value,
                child: ClampingScrollWrapper.builder(context, child!),
              ),
            );
          },
        ),
        breakpoints: BreakpointUtils.appBreakpointsList,
      ),
    );
  }
}
