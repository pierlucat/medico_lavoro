import 'package:flutter/material.dart';
import 'package:medico_lavoro/base_layout/base_layout.dart';
import 'package:medico_lavoro/base_layout/footer/footer.dart';
import 'package:medico_lavoro/page_content/pages_lvl_2/servizi/widgets/info_box.dart';
import 'package:medico_lavoro/utils/breakpoint_utils.dart';
import 'package:medico_lavoro/utils/theme.dart';

class SorveglianzaSanitaria extends StatelessWidget {
  const SorveglianzaSanitaria({super.key});

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
                        "Sorveglianza Sanitaria",
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
                        "La sorveglianza sanitaria è effettuata dal medico competente:"),
                    _buildList(context, [
                      "a) Nei casi previsti dalla normativa vigente, dalle direttive europee nonché dalle indicazioni fornite dalla Commissione consultiva di cui all'articolo 6;",
                      "b) Qualora il lavoratore ne faccia richiesta e la stessa sia ritenuta dal medico competente correlata ai rischi lavorativi."
                    ]),
                    _buildParagraph(
                        context, "La sorveglianza sanitaria comprende:"),
                    _buildList(context, [
                      "a) visita medica preventiva intesa a constatare l'assenza di controindicazioni al lavoro cui il lavoratore è destinato al fine di valutare la sua idoneità alla mansione specifica;",
                      "b) visita medica periodica per controllare lo stato di salute dei lavoratori ed esprimere il giudizio di idoneità alla mansione specifica. La periodicità di tali accertamenti, qualora non prevista dalla relativa normativa, viene stabilita, di norma, in una volta l'anno. Tale periodicità può assumere cadenza diversa, stabilita dal medico competente in funzione della valutazione del rischio. L'organo di vigilanza, con provvedimento motivato, può disporre contenuti e periodicità della sorveglianza sanitaria differenti rispetto a quelli indicati dal medico competente;",
                      "c) visita medica su richiesta del lavoratore, qualora sia ritenuta dal medico competente correlata ai rischi professionali o alle sue condizioni di salute, suscettibili di peggioramento a causa dell'attività lavorativa svolta, al fine di esprimere il giudizio di idoneità alla mansione specifica;",
                      "d) visita medica in occasione del cambio della mansione onde verificare l'idoneità alla mansione specifica;",
                      "e) visita medica alla cessazione del rapporto di lavoro nei casi previsti dalla normativa vigente."
                    ]),
                    _buildParagraph(context,
                        "Le visite mediche di cui al comma 2 non possono essere effettuate:"),
                    _buildList(context, [
                      "a) in fase preassuntiva; (lettera applicabile dal 16 maggio 2009 in forza dell'articolo 38, comma 1, decretolegge n. 207 del 2008)",
                      "b) per accertare stati di gravidanza;",
                      "c) negli altri casi vietati dalla normativa vigente."
                    ]),
                    _buildParagraph(context,
                        "Le visite mediche di cui al comma 2, a cura e spese del datore di lavoro, comprendono gli esami clinici e biologici e indagini diagnostiche mirati al rischio ritenuti necessari dal medico competente. Nei casi ed alle condizioni previste dall'ordinamento, le visite di cui al comma 2, lettere a), b) e d) sono altresì finalizzate alla verifica di assenza di condizioni di alcol dipendenza e di assunzione di sostanze psicotrope e stupefacenti."),
                    _buildParagraph(context,
                        "Gli esiti della visita medica devono essere allegati alla cartella sanitaria e di rischio di cui all'articolo 25, comma 1, lettera c), secondo i requisiti minimi contenuti nell'Allegato 3A e predisposta su formato cartaceo o informatizzato, secondo quanto previsto dall'articolo 53."),
                    _buildParagraph(context,
                        "Il medico competente, sulla base delle risultanze delle visite mediche di cui al comma 2, esprime uno dei seguenti giudizi relativi alla mansione specifica:"),
                    _buildList(context, [
                      "a) idoneità;",
                      "b) idoneità parziale, temporanea o permanente, con prescrizioni o limitazioni;",
                      "c) inidoneità temporanea;",
                      "d) inidoneità permanente."
                    ]),
                    _buildParagraph(context,
                        "Nel caso di espressione del giudizio di inidoneità temporanea vanno precisati i limiti temporali di validità."),
                    _buildParagraph(context,
                        "Dei giudizi di cui al comma 6, il medico competente informa per iscritto il datore di lavoro e il lavoratore."),
                    _buildParagraph(context,
                        "Avverso i giudizi del medico competente è ammesso ricorso, entro trenta giorni dalla data di comunicazione del giudizio medesimo, all'organo di vigilanza territorialmente competente che dispone, dopo eventuali ulteriori accertamenti, la conferma, la modifica o la revoca del giudizio stesso."),
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

  Widget _buildList(BuildContext context, List<String> items) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items.map((item) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    item,
                    style: ThemeUtils.bodyTextFunc(context),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
