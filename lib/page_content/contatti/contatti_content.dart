import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/page_content/chi_siamo/widgets/chi_siamo_content_blocs.dart';
import 'package:medico_lavoro/page_content/contatti/widgets/contatti_map.dart';
import 'package:medico_lavoro/page_content/contatti/widgets/contatti_section.dart';
import 'package:medico_lavoro/page_content/contatti/widgets/contatti_title.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_content_subtitle.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_image.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_title.dart';
import 'package:medico_lavoro/page_content/servizi/widgets/griglia_servizi.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../footer/footer.dart';
import '../../utils/breakpoint_utils.dart';

class ContattiContent extends StatelessWidget {
  const ContattiContent({super.key});

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
                      'Contatti',
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
                          SizingUtils.spaceM,
                        ],
                      ),
                    ),
                    ContattiTitle(),
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
                    ContattiSection(),
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
                    ContattiMap(),
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
