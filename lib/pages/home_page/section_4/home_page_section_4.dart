import 'package:flutter/material.dart';
import 'package:medico_lavoro/pages/home_page/section_4/widgets/s4_form.dart';
import 'package:medico_lavoro/pages/home_page/section_4/widgets/s4_title_desc.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class HomePageSection4 extends StatelessWidget {
  //final GlobalKey navigationKey;
  const HomePageSection4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizingUtils.leftRightMarginL,
        vertical: SizingUtils.spaceL,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1500,
        ),
        child: ResponsiveBreakpoints.of(context)
                .equals(BreakpointUtils.mobile.name)
            ? Column(
                children: [
                  S4TitleDesc(),
                  SizedBox(
                    height: SizingUtils.spaceL,
                  ),
                  S4Form(),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: S4TitleDesc(),
                  ),
                  Expanded(
                    child: S4Form(),
                  ),
                  //HomeTitle(),
                ],
              ),
      ),
    );
  }
}
