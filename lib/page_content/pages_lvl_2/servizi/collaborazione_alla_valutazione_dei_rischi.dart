import 'package:flutter/material.dart';
import 'package:medico_lavoro/base_layout/footer/footer.dart';
import 'package:medico_lavoro/page_content/pages_lvl_2/servizi/widgets/info_box.dart';
import 'package:medico_lavoro/utils/breakpoint_utils.dart';
import 'package:medico_lavoro/utils/theme.dart';

class CollaborazioneValutazioneRischi extends StatelessWidget {
  const CollaborazioneValutazioneRischi({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header Section
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
                  constraints: const BoxConstraints(
                    maxWidth: 1500,
                  ),
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Collaborazione e Valutazione dei Rischi",
                        style: ThemeUtils.sectionContentTitle.copyWith(
                          fontSize: BreakpointUtils.getResponsiveValue(
                            context,
                            [
                              SizingUtils.sectionContentTitleXS,
                              SizingUtils.sectionContentTitleS,
                              SizingUtils.sectionContentTitleM,
                              SizingUtils.sectionContentTitleL,
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
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Content Section
          Container(
            color: Colors.white,
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
              constraints: const BoxConstraints(maxWidth: 1500),
              child: InfoBox(
                text: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildParagraph(context,
                        "Secondo quanto definito nell’art. 2, lettera m del D.Lgs.81/08, il medico competente deve visitare gli ambienti di lavoro almeno una volta l’anno con cadenza differente sulla base della valutazione dei rischi."),
                    _buildParagraph(context,
                        "L’indicazione di periodicità differente viene comunicata al datore di lavoro ed annotata nel documento di valutazione dei rischi (art. 25, comma 1, lettera l, D.Lgs 81/08)."),
                    _buildParagraph(context,
                        "C’è la possibilità che il sopralluogo venga sostituito o integrato con la visione dei piani di sicurezza per i cantieri di durata inferiore ai 200 giorni lavorativi e dove il medico abbia già effettuato sopralluogo in altri cantieri gestiti dalla stessa impresa aventi caratteristiche analoghe e (art. 104, comma 2, D.Lgs 81/08)."),
                    _buildParagraph(context,
                        "Attraverso questo adempimento il Medico Competente è in grado di valutare l'aderenza del Documento di Valutazione dei Rischi a quanto risulta visibile dall'osservazione dei luoghi di lavoro e dalle caratteristiche del ciclo produttivo, fornendo il suo supporto per completare in maniera esaustiva l'individuazione dei rischi specifici."),
                  ],
                ),
              ),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }

  Widget _buildParagraph(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: ThemeUtils.bodyTextFunc(context),
      ),
    );
  }
}
