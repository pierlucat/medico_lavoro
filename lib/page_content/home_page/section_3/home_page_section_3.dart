import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/home_page/section_3/widgets/s3_title_desc.dart';
import 'package:medico_lavoro/page_content/home_page/section_3/widgets/s3_image.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class HomePageSection3 extends StatelessWidget {
  const HomePageSection3({super.key});

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
                .equals(BreakpointUtils.xsmall.name)
            ? Column(
                children: [
                  S3TitleDesc(),
                  SizingUtils.spacerFunc(context),
                  S3Image(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: S3Image(),
                  ),
                  Expanded(
                    child: S3TitleDesc(),
                  ),
                  //HomeTitle(),
                ],
              ),
      ),
    );
  }
}
