import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/common_widgets/content_section.dart';
import 'package:medico_lavoro/utils/common_widgets/title_section.dart';
import 'package:medico_lavoro/utils/theme.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 40,
                ),
                width: 550,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleSection(
                      title: "Chi siamo: ",
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    AccentContentSection(
                        widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Studio Toscanetti si impegna a proteggere la salute e la sicurezza dei lavoratori.",
                          style: ThemeUtils.content,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Offriamo una vasta gamma di servizi dedicati alla prevenzione, alla diagnosi ed alla gestione delle condizioni mediche legate all'ambiente di lavoro.",
                          style: ThemeUtils.content,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Il nostro team è composto da medici specializzati in medicina del lavoro, infermieri e professionisti sanitari altamente qualificati. Con la nostra esperienza e competenza, puoi essere sicuro di ricevere assistenza professionale e personalizzata in ogni fase della gestione della salute sul lavoro.",
                          style: ThemeUtils.content,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "La conformità normativa è fondamentale per qualsiasi azienda. Ci assicuriamo che la tua azienda rispetti tutte le normative e gli standard di sicurezza del lavoro, fornendo servizi di medicina del lavoro completi e aggiornati alle ultime disposizioni legislative.",
                          style: ThemeUtils.content,
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  //bottomRight: Radius.circular(12),
                  topRight: Radius.circular(5),
                ),
                child: Image.asset(
                  "assets/medicina_del_lavoro.jpeg",
                  fit: BoxFit.cover,
                  height: 500,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  //bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(5),
                ),
                child: Image.asset(
                  "assets/safety_first.jpeg",
                  fit: BoxFit.cover,
                  height: 500,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 40,
                ),
                width: 550,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleSection(title: "Cosa facciamo: "),
                    SizedBox(
                      height: 40,
                    ),
                    AccentContentSection(
                        widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Il medico del lavoro è un professionista specializzato nella tutela della salute dei lavoratori all'interno degli ambienti di lavoro.",
                          style: ThemeUtils.content,
                        ),
                        Text(
                          "Svolge un ruolo cruciale nella prevenzione delle malattie professionali, nell'individuazione dei rischi legati all'attività lavorativa e nella promozione di un ambiente lavorativo sicuro e salutare per tutti i dipendenti.",
                          style: ThemeUtils.content,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Attività e responsabilità:",
                          style: ThemeUtils.contentBold,
                        ),
                        Text(
                          "   \u2022 Valutazione della Salute dei Lavoratori",
                          style: ThemeUtils.content,
                        ),
                        Text(
                          "   \u2022 Prevenzione e Protezione",
                          style: ThemeUtils.content,
                        ),
                        Text(
                          "   \u2022 Collaborazione Multidisciplinare",
                          style: ThemeUtils.content,
                        ),
                        Text(
                          "   \u2022 Monitoraggio e Sorveglianza Sanitaria",
                          style: ThemeUtils.content,
                        ),
                        Text(
                          "   \u2022 Conformità Normativa",
                          style: ThemeUtils.content,
                        ),
                        Text(
                          "   \u2022 Formazione e Sensibilizzazione",
                          style: ThemeUtils.content,
                        ),
                        Text(
                          "   \u2022 Gestione delle Emergenze e Pronto Soccorso",
                          style: ThemeUtils.content,
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class WhatWeDo_new extends StatelessWidget {
  const WhatWeDo_new({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentSection(
      widget: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 60,
          vertical: 40,
        ),
        width: 650,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleSection(title: "Cosa facciamo: "),
            SizedBox(
              height: 40,
            ),
            AccentContentSection(
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Il medico del lavoro è un professionista specializzato nella tutela della salute dei lavoratori all'interno degli ambienti di lavoro.",
                    style: ThemeUtils.content,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Svolge un ruolo cruciale nella prevenzione delle malattie professionali, nell'individuazione dei rischi legati all'attività lavorativa e nella promozione di un ambiente lavorativo sicuro e salutare per tutti i dipendenti.",
                    style: ThemeUtils.content,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Attività e responsabilità:",
                    style: ThemeUtils.contentBold,
                  ),
                  Text(
                    "   \u2022 Valutazione della Salute dei Lavoratori",
                    style: ThemeUtils.content,
                  ),
                  Text(
                    "   \u2022 Prevenzione e Protezione",
                    style: ThemeUtils.content,
                  ),
                  Text(
                    "   \u2022 Collaborazione Multidisciplinare",
                    style: ThemeUtils.content,
                  ),
                  Text(
                    "   \u2022 Monitoraggio e Sorveglianza Sanitaria",
                    style: ThemeUtils.content,
                  ),
                  Text(
                    "   \u2022 Conformità Normativa",
                    style: ThemeUtils.content,
                  ),
                  Text(
                    "   \u2022 Formazione e Sensibilizzazione",
                    style: ThemeUtils.content,
                  ),
                  Text(
                    "   \u2022 Gestione delle Emergenze e Pronto Soccorso",
                    style: ThemeUtils.content,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(child: SizedBox()),
                CommonFilledButton(
                  text: "Scopri di più",
                  buttonStyle: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color(ColorUtils.accentColor))),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WhoWeAre_new(),
        WhatWeDo_new(),
      ],
    );
  }
}

class WhoWeAre_new extends StatelessWidget {
  const WhoWeAre_new({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentSection(
      widget: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 60,
              vertical: 40,
            ),
            width: 650,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleSection(
                  title: "Chi siamo: ",
                ),
                const SizedBox(
                  height: 40,
                ),
                AccentContentSection(
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Studio Toscanetti si impegna a proteggere la salute e la sicurezza dei lavoratori.",
                        style: ThemeUtils.content,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Offriamo una vasta gamma di servizi dedicati alla prevenzione, alla diagnosi ed alla gestione delle condizioni mediche legate all'ambiente di lavoro.",
                        style: ThemeUtils.content,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Il nostro team è composto da medici specializzati in medicina del lavoro, infermieri e professionisti sanitari altamente qualificati. Con la nostra esperienza e competenza, puoi essere sicuro di ricevere assistenza professionale e personalizzata in ogni fase della gestione della salute sul lavoro.",
                        style: ThemeUtils.content,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "La conformità normativa è fondamentale per qualsiasi azienda. Ci assicuriamo che la tua azienda rispetti tutte le normative e gli standard di sicurezza del lavoro, fornendo servizi di medicina del lavoro completi e aggiornati alle ultime disposizioni legislative.",
                        style: ThemeUtils.content,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(child: SizedBox()),
                    CommonFilledButton(
                      text: "Maggiori informazioni",
                      buttonStyle: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color(ColorUtils.accentColor))),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ],
            ),
          ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: ClipRRect(
          //         borderRadius: BorderRadius.only(
          //           //bottomRight: Radius.circular(12),
          //           bottomLeft: Radius.circular(5),
          //         ),
          //         child: Image.asset(
          //           "assets/safety_first.jpeg",
          //           fit: BoxFit.cover,
          //           height: 500,
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         padding: EdgeInsets.symmetric(
          //           horizontal: 60,
          //           vertical: 40,
          //         ),
          //         width: 550,
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             const TitleSection(title: "Cosa facciamo: "),
          //             SizedBox(
          //               height: 40,
          //             ),
          //             AccentContentSection(
          //                 widget: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   "Il medico del lavoro è un professionista specializzato nella tutela della salute dei lavoratori all'interno degli ambienti di lavoro.",
          //                   style: ThemeUtils.content,
          //                 ),
          //                 Text(
          //                   "Svolge un ruolo cruciale nella prevenzione delle malattie professionali, nell'individuazione dei rischi legati all'attività lavorativa e nella promozione di un ambiente lavorativo sicuro e salutare per tutti i dipendenti.",
          //                   style: ThemeUtils.content,
          //                 ),
          //                 SizedBox(
          //                   height: 20,
          //                 ),
          //                 Text(
          //                   "Attività e responsabilità:",
          //                   style: ThemeUtils.contentBold,
          //                 ),
          //                 Text(
          //                   "   \u2022 Valutazione della Salute dei Lavoratori",
          //                   style: ThemeUtils.content,
          //                 ),
          //                 Text(
          //                   "   \u2022 Prevenzione e Protezione",
          //                   style: ThemeUtils.content,
          //                 ),
          //                 Text(
          //                   "   \u2022 Collaborazione Multidisciplinare",
          //                   style: ThemeUtils.content,
          //                 ),
          //                 Text(
          //                   "   \u2022 Monitoraggio e Sorveglianza Sanitaria",
          //                   style: ThemeUtils.content,
          //                 ),
          //                 Text(
          //                   "   \u2022 Conformità Normativa",
          //                   style: ThemeUtils.content,
          //                 ),
          //                 Text(
          //                   "   \u2022 Formazione e Sensibilizzazione",
          //                   style: ThemeUtils.content,
          //                 ),
          //                 Text(
          //                   "   \u2022 Gestione delle Emergenze e Pronto Soccorso",
          //                   style: ThemeUtils.content,
          //                 ),
          //               ],
          //             ))
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
