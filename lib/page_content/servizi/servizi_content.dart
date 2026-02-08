import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/page_content/chi_siamo/widgets/chi_siamo_content_blocs.dart';
import 'package:medico_lavoro/page_content/servizi/widgets/griglia_servizi.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../../base_layout/footer/footer.dart';
import '../../utils/breakpoint_utils.dart';

class ServiziContent extends StatelessWidget {
  const ServiziContent({super.key});

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
                      'Servizi Integrati di Medicina del Lavoro e Sorveglianza Sanitaria',
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
                    ChiSiamoTitle(),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: BreakpointUtils.getResponsiveValue(
                  context,
                  [
                    SizingUtils.leftRightMarginXS,
                    SizingUtils.leftRightMarginS,
                    SizingUtils.leftRightMarginS,
                    SizingUtils.leftRightMarginS
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
                    RichText(
                      text: TextSpan(
                        style: ThemeUtils.bodyTextFunc(context).copyWith(
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Le prestazioni sono pianificate sulla base della ',
                          ),
                          TextSpan(
                            text: 'valutazione dei rischi aziendali ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'e ',
                          ),
                          TextSpan(
                            text:
                                'integrate nei processi decisionali delle imprese',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ' con un approccio proattivo alla prevenzione e alla gestione della sorveglianza sanitaria.\n',
                          ),
                          TextSpan(
                            text:
                                'Il Medico Competente opera in sinergia con tutte le figure previste dal sistema di prevenzione aziendale (RSPP, ASPP, RLS, datore di lavoro), garantendo supporto costante e interventi mirati.',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: BreakpointUtils.getResponsiveValue(
                        context,
                        [
                          SizingUtils.spaceXS,
                          SizingUtils.spaceS,
                          SizingUtils.spaceM,
                          SizingUtils.spaceS,
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: ThemeUtils.bodyTextFunc(context).copyWith(
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text: 'Tutti i servizi sono ',
                          ),
                          TextSpan(
                            text: 'tracciabili',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ', ',
                          ),
                          TextSpan(
                            text: 'documentati',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' e ',
                          ),
                          TextSpan(
                            text: 'modulabili',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ' in base alla specificità dei comparti produttivi, con attenzione agli aggiornamenti legislativi, alla qualità dei protocolli sanitari e all’efficacia delle misure adottate.',
                          ),
                        ],
                      ),
                    ),
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
                  SizingUtils.leftRightMarginS,
                  SizingUtils.leftRightMarginS
                ],
              ),
              // vertical: SizingUtils.spaceValueFunc(context),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1500,
              ),
              child: GrigliaServizi(),
            ),
          ),
        ),
        SizedBox(
          height: 200,
        ),
        Footer(),
      ],
    );
  }
}
