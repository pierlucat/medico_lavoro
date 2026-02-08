import 'package:flutter/material.dart';

import '../base_layout/footer/footer.dart';
import '../page_content/legislazione/widgets/legislazione_content.dart';
import '../page_content/legislazione/widgets/legislazione_paragrafi.dart';
import '../utils/breakpoint_utils.dart';
import '../utils/theme.dart';

class Legislazione extends StatelessWidget {
  const Legislazione({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
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
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 1500,
                    ),
                    child: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Il contesto normativo',
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
                        LegislazioneParagrafi(),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Una lista degli articoli tratti dai decreti summenzionati, che rappresentano una parte dei servizi che noi offriamo, sono elencati qui in seguito:',
                ),
                SizedBox(
                  height: 50,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 1500,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white),
                    child: LegislazioneLista(),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
