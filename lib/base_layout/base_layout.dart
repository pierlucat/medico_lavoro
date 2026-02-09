import 'package:flutter/material.dart';
import 'package:medico_lavoro/base_layout/app_bar/header_drawer.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../utils/breakpoint_utils.dart';
import '../utils/theme.dart';
import 'app_bar/header_appbar.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;

  const BaseLayout({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          ResponsiveBreakpoints.of(context).equals(BreakpointUtils.mobile.name)
              ? HeaderDrawer()
              : null,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 85,
        title: HeaderLogo(),
        actions: ResponsiveBreakpoints.of(context)
                .equals(BreakpointUtils.mobile.name)
            ? null
            : [
                HeaderActions(),
              ],
        backgroundColor: Color(ColorUtils.primaryColor),
      ),
      body: child,
    );
  }
}
