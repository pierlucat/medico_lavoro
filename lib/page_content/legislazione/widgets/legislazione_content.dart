import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/common_widgets/accordion/accordion_entry.dart';
import 'package:medico_lavoro/utils/common_widgets/accordion/accordion_group.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LegislazioneLista extends StatelessWidget {
  const LegislazioneLista({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

    // Padding ESTERNO all'accordion: stacca tutto il blocco dai bordi dello schermo
    double horizontalPadding = isMobile
        ? 10.0
        : 0.0; // 0 su desktop se vuoi allineamento perfetto, oppure 20

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 1, color: Colors.black38)),
        ),
        child: Column(
          children: [
            AccordionGroup(
              entries: [
                // ACCORDION 1: DM 388/03 e Contenuto Cassette
                AccordionEntry(
                  title:
                      'Decreto ministeriale 388/03 - Regolamento recante disposizioni sul primo soccorso',
                  text: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Di seguito sono riportati i contenuti minimi della cassetta di primo soccorso e del pacchetto di medicazione, come previsto dagli Allegati 1 e 2 del D.M. 388/03.',
                        style: getWidgetTextStyle(context),
                      ),
                      const SizedBox(height: 20),
                      _buildContentBox(
                        context,
                        "ALLEGATO 1 - Cassetta di Primo Soccorso (Aziende Gruppo A e B)",
                        [
                          "Guanti sterili monouso (5 paia)",
                          "Visiera paraschizzi",
                          "Flacone di soluzione cutanea di iodopovidone al 10% di iodio da 1 litro (1)",
                          "Flaconi di soluzione fisiologica (sodio cloruro - 0,9%) da 500 ml (3)",
                          "Compresse di garza sterile 10 x 10 in buste singole (10)",
                          "Compresse di garza sterile 18 x 40 in buste singole (2)",
                          "Teli sterili monouso (2)",
                          "Pinzette da medicazione sterili monouso (2)",
                          "Confezione di rete elastica di misura media (1)",
                          "Confezione di cotone idrofilo (1)",
                          "Confezioni di cerotti di varie misure pronti all'uso (2)",
                          "Rotoli di cerotto alto cm 2,5 (2)",
                          "Un paio di forbici",
                          "Lacci emostatici (3)",
                          "Ghiaccio pronto uso (2)",
                          "Sacchetti monouso per la raccolta di rifiuti sanitari (2)",
                          "Termometro",
                          "Apparecchio per la misurazione della pressione arteriosa",
                        ],
                      ),
                      const SizedBox(height: 20),
                      _buildContentBox(
                        context,
                        "ALLEGATO 2 - Pacchetto di Medicazione (Aziende Gruppo C)",
                        [
                          "Guanti sterili monouso (2 paia)",
                          "Flacone di soluzione cutanea di iodopovidone al 10% di iodio da 125 ml (1)",
                          "Flacone di soluzione fisiologica (sodio cloruro - 0,9%) da 250 ml (1)",
                          "Compresse di garza sterile 18 x 40 in buste singole (1)",
                          "Compresse di garza sterile 10 x 10 in buste singole (3)",
                          "Pinzette da medicazione sterili monouso (1)",
                          "Confezione di cotone idrofilo (1)",
                          "Confezione di cerotti di varie misure pronti all'uso (1)",
                          "Rotolo di cerotto alto cm 2,5 (1)",
                          "Rotolo di benda orlata alta cm 10 (1)",
                          "Un paio di forbici",
                          "Laccio emostatico (1)",
                          "Ghiaccio pronto uso (1)",
                          "Sacchetti monouso per la raccolta di rifiuti sanitari (1)",
                          "Istruzioni sul modo di usare i presidi suddetti e di prestare i primi soccorsi",
                        ],
                      ),
                    ],
                  ),
                ),

                // ACCORDION 2: Sorveglianza Sanitaria (D.Lgs 81/08)
                AccordionEntry(
                  title:
                      'Decreto legislativo n° 81, 9 aprile 2008 - Sorveglianza Sanitaria',
                  text: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionTitle(context,
                          "1. La sorveglianza sanitaria è effettuata dal medico competente:"),
                      _buildListItem(context,
                          "a) nei casi previsti dalla normativa vigente, dalle direttive europee nonché dalle indicazioni fornite dalla Commissione consultiva di cui all'articolo 6;"),
                      _buildListItem(context,
                          "b) qualora il lavoratore ne faccia richiesta e la stessa sia ritenuta dal medico competente correlata ai rischi lavorativi."),
                      const SizedBox(height: 15),
                      _buildSectionTitle(
                          context, "2. La sorveglianza sanitaria comprende:"),
                      _buildListItem(context,
                          "a) visita medica preventiva intesa a constatare l'assenza di controindicazioni al lavoro cui il lavoratore è destinato al fine di valutare la sua idoneità alla mansione specifica;"),
                      _buildListItem(context,
                          "b) visita medica periodica per controllare lo stato di salute dei lavoratori ed esprimere il giudizio di idoneità alla mansione specifica. La periodicità di tali accertamenti, qualora non prevista dalla relativa normativa, viene stabilita, di norma, in una volta l'anno. Tale periodicità può assumere cadenza diversa, stabilita dal medico competente in funzione della valutazione del rischio. L'organo di vigilanza, con provvedimento motivato, può disporre contenuti e periodicità della sorveglianza sanitaria differenti rispetto a quelli indicati dal medico competente;"),
                      _buildListItem(context,
                          "c) visita medica su richiesta del lavoratore, qualora sia ritenuta dal medico competente correlata ai rischi professionali o alle sue condizioni di salute, suscettibili di peggioramento a causa dell'attività lavorativa svolta, al fine di esprimere il giudizio di idoneità alla mansione specifica;"),
                      _buildListItem(context,
                          "d) visita medica in occasione del cambio della mansione onde verificare l'idoneità alla mansione specifica;"),
                      _buildListItem(context,
                          "e) visita medica alla cessazione del rapporto di lavoro nei casi previsti dalla normativa vigente."),
                      const SizedBox(height: 15),
                      _buildSectionTitle(context,
                          "3. Le visite mediche di cui al comma 2 non possono essere effettuate:"),
                      _buildListItem(context,
                          "a) in fase preassuntiva (vedi articolo 32, comma 1, del decreto-legge 207/08);"),
                      _buildListItem(
                          context, "b) per accertare stati di gravidanza;"),
                      _buildListItem(context,
                          "c) negli altri casi vietati dalla normativa vigente."),
                      const SizedBox(height: 15),
                      _buildParagraph(context,
                          "4. Le visite mediche di cui al comma 2, a cura e spese del datore di lavoro, comprendono gli esami clinici e biologici e indagini diagnostiche mirati al rischio ritenuti necessari dal medico competente. Nei casi ed alle condizioni previste dall'ordinamento, le visite di cui al comma 2, lettere a), b) e d) sono altresì finalizzate alla verifica di assenza di condizioni di alcol dipendenza e di assunzione di sostanze psicotrope e stupefacenti."),
                      const SizedBox(height: 15),
                      _buildParagraph(context,
                          "5. Gli esiti della visita medica devono essere allegati alla cartella sanitaria e di rischio di cui all'articolo 25, comma 1, lettera c), secondo i requisiti minimi contenuti nell'Allegato 3A e predisposta su formato cartaceo o informatizzato, secondo quanto previsto dall'articolo 53."),
                      const SizedBox(height: 15),
                      _buildSectionTitle(context,
                          "6. Il medico competente, sulla base delle risultanze delle visite mediche di cui al comma 2, esprime uno dei seguenti giudizi relativi alla mansione specifica:"),
                      _buildListItem(context, "a) idoneità;"),
                      _buildListItem(context,
                          "b) idoneità parziale, temporanea o permanente, con prescrizioni o limitazioni;"),
                      _buildListItem(context, "c) inidoneità temporanea;"),
                      _buildListItem(context, "d) inidoneità permanente."),
                      const SizedBox(height: 15),
                      _buildParagraph(context,
                          "7. Nel caso di espressione del giudizio di inidoneità temporanea vanno precisati i limiti temporali di validità."),
                      const SizedBox(height: 15),
                      _buildParagraph(context,
                          "8. Dei giudizi di cui al comma 6, il medico competente informa per iscritto il datore di lavoro e il lavoratore."),
                      const SizedBox(height: 15),
                      _buildParagraph(context,
                          "9. Avverso i giudizi del medico competente è ammesso ricorso, entro trenta giorni dalla data di comunicazione del giudizio medesimo, all'organo di vigilanza territorialmente competente che dispone, dopo eventuali ulteriori accertamenti, la conferma, la modifica o la revoca del giudizio stesso."),
                    ],
                  ),
                ),

                // ACCORDION 3: Obblighi non delegabili
                AccordionEntry(
                  title: 'Elenco degli obblighi non delegabili',
                  text: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Le attività di esclusiva competenza del datore di lavoro, e quindi non delegabili, sono:',
                        style: getWidgetTextStyle(context),
                      ),
                      const SizedBox(height: 10),
                      _buildListItem(context,
                          "• la valutazione di rischi a cui sono esposti i lavoratori con la conseguente redazione dell’apposito documento di valutazione dei rischi (DVR);"),
                      _buildListItem(context,
                          "• la nomina del responsabile del servizio di prevenzione e protezione (RSPP)."),
                      const SizedBox(height: 20),
                      _buildSectionTitle(context, "Valutazione dei rischi"),
                      _buildParagraph(context,
                          "La valutazione dei rischi ha lo scopo individuare preventivamente tutti i potenziali rischi presenti in azienda che possono causare danni alla salute o minacciare la sicurezza dei lavoratori."),
                      _buildParagraph(context,
                          "Il datore di lavoro, sia nella fase di valutazione che in quella di redazione, può decidere di affidarsi a un tecnico specializzato nel campo della sicurezza sul lavoro per una consulenza esterna. Al termine del processo deve approvare quanto prodotto con la partecipazione del responsabile del servizio di prevenzione e protezione, del responsabile dei lavoratori per la sicurezza e del medico competente."),
                      _buildParagraph(context,
                          "Per approfondire tutti gli aspetti legati al DVR, ti consiglio cos’è il DVR."),
                      const SizedBox(height: 20),
                      _buildSectionTitle(context, "Nomina dell’RSPP"),
                      _buildParagraph(context,
                          "L’RSPP ha il compito di coordinare le attività finalizzate alla prevenzione e protezione dai rischi professionali per i lavoratori e di supportare il datore di lavoro nel mantenimento di adeguati livelli di salute e sicurezza in azienda."),
                      const SizedBox(height: 10),
                      Text("Il datore di lavoro può scegliere di:",
                          style: getWidgetTextStyle(context)),
                      _buildListItem(context,
                          "• designare un lavoratore interno all’azienda in possesso dei requisiti descritti (art. 32 D.Lgs. 81/2008);"),
                      _buildListItem(context,
                          "• nominare un professionista esterno all’azienda in possesso dei requisiti descritti (art. 32 D.Lgs. 81/2008);"),
                      _buildListItem(context,
                          "• ricoprire lui stesso il ruolo di RSPP, ma solo in questi casi:"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildListItem(context,
                                "- nelle aziende artigiane e industriali fino a 30 lavoratori (escluse le aziende estrattive e altre attività minerarie e le strutture di ricovero e cura sia pubbliche sia private);"),
                            _buildListItem(context,
                                "- nelle aziende agricole e zootecniche fino a 30 lavoratori;"),
                            _buildListItem(context,
                                "- nelle aziende della pesca fino a 20 lavoratori;"),
                            _buildListItem(context,
                                "- nelle altre aziende fino a 200 lavoratori."),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper Methods

  TextStyle getWidgetTextStyle(BuildContext context) {
    return TextStyle(
      fontSize: ThemeUtils.bodyTextSizeFunc(context),
      color: Color(ColorUtils.accentColor),
    );
  }

  Widget _buildContentBox(
      BuildContext context, String title, List<String> items) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: getWidgetTextStyle(context)
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ...items.map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("• ", style: getWidgetTextStyle(context)),
                    Expanded(
                        child: Text(item, style: getWidgetTextStyle(context))),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style:
            getWidgetTextStyle(context).copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildParagraph(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        text,
        style: getWidgetTextStyle(context),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0, left: 10.0),
      child: Text(
        text,
        style: getWidgetTextStyle(context),
      ),
    );
  }
}
