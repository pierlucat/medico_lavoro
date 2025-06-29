import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/page_content/chi_siamo/widgets/chi_siamo_content_blocs.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_content_subtitle.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_image.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_title.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../footer/footer.dart';
import '../../utils/breakpoint_utils.dart';

class ChiSiamoContent extends StatelessWidget {
  const ChiSiamoContent({super.key});

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
                      'La Medicina del Lavoro',
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                          height: 600,
                          width: 450,
                          child: SizedBox(),
                        ),
                        Container(
                          width: 400,
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Dott. Mario De Stefani",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Medico chirurgo specializzato in Medicina del Lavoro con oltre dieci anni di esperienza in aziende manifatturiere e del settore chimico.\n\nHa collaborato con importanti realtà industriali del Nord-Est per la gestione della sorveglianza sanitaria e dei piani di prevenzione.\n\nÈ appassionato di ergonomia e promuove programmi di benessere aziendale mirati a migliorare la qualità di vita dei lavoratori.',
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ChiSiamoTitle(),
                  ],
                ),
              ),
            ),
          ),
        ),
        Center(
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
              child: ChiSiamoSubtitle(),
            ),
          ),
        ),
        Footer(),
      ],
    );
  }
}
