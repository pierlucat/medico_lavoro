import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/page_content/legislazione/widgets/legislazione_content.dart';
import 'package:medico_lavoro/page_content/legislazione/widgets/legislazione_paragrafi.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../../footer/footer.dart';
import '../../utils/breakpoint_utils.dart';

class LegislazioneContent extends StatelessWidget {
  const LegislazioneContent({super.key});

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
                      height: BreakpointUtils.getResponsiveValue(
                        context,
                        [
                          SizingUtils.spaceXS,
                          SizingUtils.spaceS,
                          SizingUtils.spaceM,
                          SizingUtils.spaceM,
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white),
                      child: LegislazioneLista(),
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
