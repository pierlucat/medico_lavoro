import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/our_place/widgets/our_place_content.dart';
import 'package:medico_lavoro/page_content/our_place/widgets/our_place_image.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../utils/breakpoint_utils.dart';

class OurPlace extends StatelessWidget {
  const OurPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            ? Column(
                children: [
                  OurPlaceContent(),
                  SizingUtils.spacerFunc(context),
                  OurPlaceImage(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: OurPlaceImage()),
                  Expanded(child: OurPlaceContent()),
                  //HomeTitle(),
                ],
              ),
      ),
    );
  }
}
