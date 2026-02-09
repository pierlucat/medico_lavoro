import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../utils/breakpoint_utils.dart';
import 'header_text_button.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Studio',
            style: ThemeUtils.title.copyWith(
              fontSize: 28,
            ),
          ),
          Container(
            color: Colors.red,
            child: Text(
              ' De Stefani Tecchio',
              style: ThemeUtils.title.copyWith(
                fontSize: 36,
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 38,
            width: 2,
            color: Color(ColorUtils.accentColor),
          ),
          SizedBox(width: 10),
          Text(
            'Medicina del lavoro',
            style: ThemeUtils.subtitle.copyWith(
              fontSize: SizingUtils.bodyTextL,
            ),
          ),
        ],
      ),
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
          width: 10,
        ),
      ],
    );
  }

  double getWidth(BuildContext context) {
    return 20;
  }
}
