import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/servizi/widgets/griglia_servizi.dart';

import '../../footer/footer.dart';
import '../../utils/breakpoint_utils.dart';
import '../../utils/theme.dart';
import '../chi_siamo/widgets/chi_siamo_content_blocs.dart';

class DettaglioServizio extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  const DettaglioServizio({
    super.key,
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      title,
                      style: ThemeUtils.sectionContentTitle.copyWith(
                        fontSize: BreakpointUtils.getResponsiveValue(
                          context,
                          [
                            SizingUtils.sectionContentTitleXS,
                            SizingUtils.sectionContentTitleS,
                            SizingUtils.sectionContentTitleM,
                            SizingUtils.sectionContentTitleL
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: BreakpointUtils.getResponsiveValue(
                        context,
                        [
                          SizingUtils.spaceXS,
                          SizingUtils.spaceS,
                          SizingUtils.spaceM,
                          SizingUtils.spaceL,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Footer(),
      ],
    );
  }
}
