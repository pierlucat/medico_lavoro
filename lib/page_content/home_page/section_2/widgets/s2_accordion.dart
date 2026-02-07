import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/common_widgets/accordion/accordion_entry.dart';
import 'package:medico_lavoro/utils/common_widgets/accordion/accordion_group.dart';
import 'package:medico_lavoro/utils/theme.dart';

class S2Accordion extends StatelessWidget {
  const S2Accordion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1),
        ),
      ),
      child: Column(
        children: [
          AccordionGroup(
            entries: [
              AccordionEntry(
                title: 'Sorveglianza Sanitaria',
                text: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Questa area copre tutte le attività relative al monitoraggio e alla valutazione dello stato di salute dei dipendenti.Include le visite mediche previste dal decreto 81/08 e l\'emissione dei giudizi idoneità specifici per mansioni comportanti l\'esposizione a rischi professionali.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'L’obiettivo è prevenire l’insorgenza di malattie professionali e garantire che ogni lavoratore sia idoneo a svolgere le proprie mansioni in sicurezza.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Maggiori Informazioni',
                        style: getLinkTextStyle(context),
                      ),
                    ),
                  ],
                ),
              ),
              AccordionEntry(
                title: 'Collaborazine alla Valutazione dei Rischi',
                text: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Questa macro area comprende il supporto nella valutazione dei rischi e la gestione delle diverse problematiche all\'interno dell’azienda.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Forniamo il nostro supporto nell\'individuazione e analisi delle diverse tipologie di rischi presenti sul luogo di lavoro e collaboriamo per cercare soluzioni volte all\'eliminazione o riduzione dei medesimi.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Maggiori Informazioni',
                        style: getLinkTextStyle(context),
                      ),
                    ),
                  ],
                ),
              ),
              AccordionEntry(
                title: 'Consulenza Medica Aziendale',
                text: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Offriamo consulenza completa sulla conformità normativa, supportando le aziende nell’adeguamento alle leggi e ai regolamenti in materia di salute e sicurezza sul lavoro.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Creiamo programmi di prevenzione personalizzati, mirati a ridurre i rischi lavorativi e migliorare le condizioni di lavoro.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Aiutiamo le aziende nella gestione degli eventuali casi complessi con soluzioni che permettano il rispetto e la tutela della salute del lavoratore con le diverse necessitá aziendali.',
                      style: getWidgetTextStyle(context),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // InkWell(
                    //   onTap: () {},
                    //   child: Text(
                    //     'Maggiori Informazioni',
                    //     style: getLinkTextStyle(context),
                    //   ),
                    // ),
                  ],
                ),
              ),
              AccordionEntry(
                title: 'Attività Aggiungtive di Medicina del Lavoro',
                text: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'La Medicina del Lavoro non si compone solamente dello svolgimento delle visite mediche.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Le attivitá correlate sono molteplici e di eguale importanza, il Medico del Lavoro infatti partecipa alla Riunione Periodica (ai sensi dell\' Art. 35 D.Lgs 81/08) e provvede alla stesura della Relazione Sanitaria annuale, la quale permette di valutare quale sia lo \'stato di salute\' dell\'Azienda cliente.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Infine, contribuisce all\'elaborazione statistica dei dati inerenti alla sorveglianza sanitaria a livello nazionale con l\'invio dell\'Allegato 3B.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Maggiori Informazioni',
                        style: getLinkTextStyle(context),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextStyle getWidgetTextStyle(BuildContext context) {
    return TextStyle(
      fontSize: SizingUtils.bodyTextL,
      color: Color(
        ColorUtils.accentColor,
      ),
    );
  }

  TextStyle getLinkTextStyle(BuildContext context) {
    return TextStyle(
      fontSize: SizingUtils.bodyTextL,
      fontWeight: FontWeight.bold,
      color: Color(
        ColorUtils.accentColor,
      ),
      decoration: TextDecoration.underline,
      decorationColor: Color(
        ColorUtils.accentColor,
      ),
    );
  }
}
