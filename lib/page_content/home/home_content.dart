import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_content_subtitle.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_image.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_title.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../utils/breakpoint_utils.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(ColorUtils.primaryColor),
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: BreakpointUtils.getResponsiveValue(
              context,
              [
                SizingUtils.leftRightMarginXS,
                SizingUtils.leftRightMarginS,
                SizingUtils.leftRightMarginM,
                SizingUtils.leftRightMarginL
              ],
            ),
            vertical: SizingUtils.spaceValueFunc(context),
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
        HomeTitle(),
        SizingUtils.spacerFunc(context),
        HomeImage(),
      ],
    );
  }

  Widget _standardView() {
    return Row(
      children: [
        Expanded(child: HomeTitle()),
        Expanded(
          child: HomeImage(),
        )
      ],
    );
  }
}
