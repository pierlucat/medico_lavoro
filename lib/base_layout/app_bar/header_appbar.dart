import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../utils/breakpoint_utils.dart';
import 'header_text_button.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: HeaderLogo(),
      actions:
          ResponsiveBreakpoints.of(context).equals(BreakpointUtils.xsmall.name)
              ? null
              : [
                  HeaderActions(),
                ],
    );
    // return Center(
    //   child: Container(
    //     height: BreakpointUtils.getResponsiveValue(
    //       context,
    //       [
    //         SizingUtils.topBarHeightXS,
    //         SizingUtils.topBarHeightS,
    //         SizingUtils.topBarHeightM,
    //         SizingUtils.topBarHeightL
    //       ],
    //     ),
    //     decoration: BoxDecoration(
    //       color: Color(ColorUtils.primaryColor),
    //     ),
    //     padding: EdgeInsets.only(
    //       left: BreakpointUtils.getResponsiveValue(
    //         context,
    //         [
    //           SizingUtils.leftRightMarginXS,
    //           SizingUtils.leftRightMarginS,
    //           SizingUtils.leftRightMarginM,
    //           SizingUtils.leftRightMarginL
    //         ],
    //       ),
    //       right: BreakpointUtils.getResponsiveValue(
    //         context,
    //         [
    //           SizingUtils.leftRightMarginXS,
    //           SizingUtils.leftRightMarginS,
    //           SizingUtils.leftRightMarginM,
    //           SizingUtils.leftRightMarginL
    //         ],
    //       ),
    //     ),
    //     child: ConstrainedBox(
    //       constraints: BoxConstraints(
    //         maxWidth: 1500,
    //       ),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           ResponsiveBreakpoints.of(context)
    //                   .equals(BreakpointUtils.xsmall.name)
    //               ? IconButton(
    //                   style: ButtonStyle(
    //                     padding: WidgetStatePropertyAll(EdgeInsets.zero),
    //                   ),
    //                   padding: EdgeInsets.zero,
    //                   icon: AnimatedSwitcher(
    //                     duration: Duration(milliseconds: 200),
    //                     child: Icon(
    //                       //isMenuOpen ? Icons.close : Icons.menu,
    //                       true ? Icons.close : Icons.menu,
    //                       color: Colors.black,
    //                       size: 25,
    //                     ),
    //                   ),
    //                   onPressed: () {
    //                     //callBack.call();
    //                   },
    //                 )
    //               : HeaderLogo(),
    //           ResponsiveBreakpoints.of(context)
    //                   .equals(BreakpointUtils.xsmall.name)
    //               ? HeaderLogo()
    //               : HeaderActions(
    //                   //navigatorKey: navigatorKey,
    //                   ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Studio Toscanetti',
          style: ThemeUtils.title.copyWith(
            fontSize: BreakpointUtils.getResponsiveValue(
              context,
              [20, 20, 25, 30],
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          height: BreakpointUtils.getResponsiveValue(
            context,
            [22, 22, 27, 32],
          ),
          width: 2,
          color: Color(ColorUtils.accentColor),
        ),
        SizedBox(width: 10),
        Text(
          'Medicina del lavoro',
          style: ThemeUtils.subtitle.copyWith(
            fontSize: BreakpointUtils.getResponsiveValue(
              context,
              [14, 14, 16, 18],
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderActions extends StatelessWidget {
  const HeaderActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderTextButton(
          text: 'Home',
          pageName: '/',
          //keyToSection: pageNavigation.sectionKeys?[Sections.home],
        ),
        SizedBox(
          width: getWidth(context),
        ),
        HeaderTextButton(
          text: 'Chi siamo',
          //keyToSection: pageNavigation.sectionKeys?[Sections.whoWeAre],
          pageName: '/chi-siamo',
        ),
        SizedBox(
          width: getWidth(context),
        ),
        HeaderTextButton(
          text: 'Servizi',
          pageName: '/servizi',
        ),
        SizedBox(
          width: getWidth(context),
        ),
        HeaderTextButton(
          text: 'Legislazione',
          pageName: '/legislazione',
        ),
        SizedBox(
          width: getWidth(context),
        ),
        HeaderTextButton(
          text: 'Contatti',
          pageName: '/contatti',
        ),
        SizedBox(
          width: BreakpointUtils.getResponsiveValue(
            context,
            [
              SizingUtils.leftRightMarginXS,
              SizingUtils.leftRightMarginS,
              SizingUtils.leftRightMarginM,
              SizingUtils.leftRightMarginL
            ],
          ),
        ),
      ],
    );
  }

  double getWidth(BuildContext context) {
    return BreakpointUtils.getResponsiveValue(context, [10, 10, 20, 20]);
  }
}
