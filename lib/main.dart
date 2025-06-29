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

// class MainPage extends StatelessWidget {
//   const MainPage({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(ColorUtils.primaryColor),
//       body: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             child: HeaderAppBar(),
//           ),
//           Positioned(
//             top: BreakpointUtils.getResponsiveValue<double>(
//               context,
//               [
//                 SizingUtils.topBarHeightXS,
//                 SizingUtils.topBarHeightS,
//                 SizingUtils.topBarHeightM,
//                 SizingUtils.topBarHeightL,
//               ],
//             ),
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Container(
//               color: Color(ColorUtils.backgroundGrey),
//               height: MediaQuery.of(context).size.height -
//                   BreakpointUtils.getResponsiveValue<double>(
//                     context,
//                     [
//                       SizingUtils.topBarHeightXS,
//                       SizingUtils.topBarHeightS,
//                       SizingUtils.topBarHeightM,
//                       SizingUtils.topBarHeightL
//                     ],
//                   ),
//               child: Navigator(
//                 onGenerateRoute: (settings) {
//                   Widget page;
//                   switch (settings.name) {
//                     case 'chi_siamo':
//                       page = SingleChildScrollView(
//                         child: ChiSiamo(),
//                       );
//                       break;
//                     default:
//                       page = SingleChildScrollView(
//                         child: Home(),
//                       );
//                   }
//                   return MaterialPageRoute(builder: (context) => page);
//                 },
//               ),
//             ),
//           ),
//           AnimatedPositioned(
//             duration: const Duration(milliseconds: 250),
//             left: true ? 0 : -250,
//             //left: isMenuOpen ? 0 : -250,
//             top: BreakpointUtils.getResponsiveValue<double>(
//               context,
//               [
//                 SizingUtils.topBarHeightXS,
//                 SizingUtils.topBarHeightS,
//                 SizingUtils.topBarHeightM,
//                 SizingUtils.topBarHeightL,
//               ],
//             ),
//             bottom: 0,
//             child: Container(
//               width: 250,
//               color: Color(ColorUtils.lightAccentColor),
//               child: ListView(
//                 shrinkWrap: true,
//                 children: [
//                   const SizedBox(height: 21),
//                   HeaderTextButton(
//                     text: 'Home',
//                     pageName: '/',
//                   ),
//                   const SizedBox(height: 16),
//                   HeaderTextButton(
//                     text: 'Chi siamo',
//                     pageName: 'chi_siamo',
//                   ),
//                   const SizedBox(height: 16),
//                   HeaderTextButton(
//                     text: 'Associati',
//                   ),
//                   const SizedBox(height: 16),
//                   HeaderTextButton(
//                     text: 'Servizi',
//                   ),
//                   const SizedBox(height: 16),
//                   HeaderTextButton(
//                     text: 'Contattaci',
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
