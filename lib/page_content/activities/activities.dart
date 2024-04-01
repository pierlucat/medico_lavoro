import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/activities/widgets/activity_icon.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/common_widgets/content_section.dart';
import 'package:medico_lavoro/utils/common_widgets/title_section.dart';
import 'package:medico_lavoro/utils/theme.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  bool showServices = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 60.0,
        bottom: 60.0,
        left: 60.0,
        right: 60.0,
      ),
      child: Column(
        children: [
          TitleSection(title: "Servizi"),
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  style: ThemeUtils.content,
                  "I nostri servizi offrono un'ampia gamma di soluzioni personalizzate per garantire la salute, la sicurezza e il benessere dei lavoratori all'interno del vostro ambiente di lavoro. Ci impegniamo a fornire servizi di alta qualità per soddisfare le esigenze specifiche della vostra azienda, indipendentemente dalla dimensione o dal settore di attività."),
              Text(
                  style: ThemeUtils.content,
                  "Dalla valutazione dei rischi e la prevenzione delle malattie professionali alla formazione del personale e alla gestione delle emergenze, offriamo un'assistenza completa per garantire la conformità normativa e creare un ambiente lavorativo sicuro, salutare e produttivo."),
              Text(
                  style: ThemeUtils.content,
                  "Siamo qui per essere il vostro partner di fiducia nella tutela della salute dei lavoratori e nel raggiungimento degli obiettivi aziendali."),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              AccentContentSection(
                widget: Column(
                  children: [
                    Wrap(
                      runSpacing: 25,
                      spacing: 50,
                      children: [
                        ActivityIcon(
                          path: "assets/dito.png",
                          label: 'Dito nel culo',
                        ),
                        ActivityIcon(
                          path: "assets/acconciatura.png",
                          label: 'Acconciatura dei peli pubici',
                        ),
                        ActivityIcon(
                          path: "assets/drugs.jpeg",
                          label: 'Iniezione di droghe',
                        ),
                        ActivityIcon(
                          path: "assets/alcol.png",
                          label: 'Iniezione di alcol',
                        ),
                        ActivityIcon(
                          path: "assets/calci.jpeg",
                          label: 'Calci nei colgioni',
                        ),
                        ActivityIcon(
                          path: "assets/frusta.png",
                          label: 'Fustigazione',
                        ),
                        ActivityIcon(
                          path: "assets/pene.png",
                          label: 'Allungamento del pene',
                        ),
                        ActivityIcon(
                          path: "assets/ritrovamento.png",
                          label: "Ritrovamento del pene",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CommonFilledButton(
                      text: "Scopri di più",
                      callBack: () {
                        setState(() {
                          showServices = !showServices;
                        });
                      },
                    ),
                    if (showServices)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1. Visite Mediche Periodiche',
                            style: ThemeUtils.contentBold,
                          ),
                          Text(
                            'Valutazioni periodiche dello stato di salute dei dipendenti per monitorare eventuali cambiamenti e prevenire malattie professionali.',
                            style: ThemeUtils.content,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '2. Valutazione dei Rischi',
                            style: ThemeUtils.contentBold,
                          ),
                          Text(
                            "Analisi approfondita dei rischi presenti nell'ambiente lavorativo per identificare potenziali pericoli per la salute e la sicurezza dei lavoratori.",
                            style: ThemeUtils.content,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '3. Elaboraizone di Programmi di Prevenzione',
                            style: ThemeUtils.contentBold,
                          ),
                          Text(
                            '4. Sviluppo di programmi personalizzati per prevenire infortuni sul lavoro, malattie professionali e promuovere un ambiente di lavoro sicuro.',
                            style: ThemeUtils.content,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '5. Formazione del Personale',
                            style: ThemeUtils.contentBold,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Corsi di formazione per i dipendenti su sicurezza sul lavoro, uso corretto dei dispositivi di protezione, e procedure di emergenza.',
                              style: ThemeUtils.content,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '6. Gestione delle Emergenze e Pronto Soccorso',
                            style: ThemeUtils.contentBold,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Pianificazione e implementazione di procedure di emergenza per gestire incidenti sul lavoro e fornire pronto soccorso ai dipendenti in caso di necessità.',
                              style: ThemeUtils.content,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '7. Monitoraggio della Salute Occupazionale',
                            style: ThemeUtils.contentBold,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Monitoraggio costante delle condizioni di salute dei lavoratori esposti a rischi specifici, come agenti chimici, rumore o vibrazioni.',
                              style: ThemeUtils.content,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '8. Esami di Idoneità Lavorativa',
                            style: ThemeUtils.contentBold,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Valutazione dell'idoneità dei lavoratori per specifiche mansioni, considerando le loro condizioni di salute e le esigenze del lavoro.",
                              style: ThemeUtils.content,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '9. Sorveglianza Sanitaria',
                            style: ThemeUtils.contentBold,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Sorveglianza continua della salute dei lavoratori che possono essere esposti a rischi particolari, con l'obiettivo di individuare precocemente eventuali problemi di salute correlati al lavoro.",
                              style: ThemeUtils.content,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '10. Supporto Legale e Consulenza Normativa',
                            style: ThemeUtils.contentBold,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Fornitura di consulenza legale e assistenza nell'interpretazione delle normative e regolamenti in materia di sicurezza sul lavoro.",
                              style: ThemeUtils.content,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '11. Certificazioni e Conformità Normativa',
                            style: ThemeUtils.contentBold,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Supporto per ottenere le certificazioni necessarie e garantire la conformità normativa con le disposizioni legislative in materia di salute e sicurezza sul lavoro.',
                              style: ThemeUtils.content,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '12. Analisi e Controllo degli Agenti Fisici, Chimici e Biologici',
                            style: ThemeUtils.contentBold,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Valutazione e controllo degli agenti fisici, chimici e biologici presenti nell'ambiente di lavoro che possono influenzare la salute dei lavoratori.",
                              style: ThemeUtils.content,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '13. Valutazione Psicosociale e Stress LavoroCorrelato',
                            style: ThemeUtils.contentBold,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Valutazione dei fattori psicosociali presenti nell'ambiente lavorativo che possono influenzare il benessere mentale dei dipendenti e la loro produttività.",
                              style: ThemeUtils.content,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
