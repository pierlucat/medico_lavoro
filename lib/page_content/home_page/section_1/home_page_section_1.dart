import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/page_content/home_page/section_1/widgets/s1_image.dart';
import 'package:medico_lavoro/page_content/home_page/section_1/widgets/s1_title_desc.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class HomePageSection1 extends StatelessWidget {
  const HomePageSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(ColorUtils.primaryColor),
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: SizingUtils.spaceL,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 1500,
            ),
            child: ResponsiveBreakpoints.of(context)
                    .equals(BreakpointUtils.xsmall.name)
                ? _mobileView(context)
                : _standardView(),
          ),
        ),
      ),
    );
  }

  Widget _mobileView(BuildContext context) {
    return Column(
      children: [
        S1TitleDesc(),
        SizingUtils.spacerFunc(context),
        S1Image(),
      ],
    );
  }

  Widget _standardView() {
    return Row(
      children: [
        Expanded(
          child: S1TitleDesc(),
        ),
        Expanded(
          child: S1Image(),
        )
      ],
    );
  }
}
