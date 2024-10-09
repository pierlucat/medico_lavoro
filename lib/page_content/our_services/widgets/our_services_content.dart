import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/our_services/widgets/accordion_entry.dart';
import 'package:medico_lavoro/page_content/our_services/widgets/accordion_group.dart';
import 'package:medico_lavoro/utils/theme.dart';

class OurServicesContent extends StatelessWidget {
  OurServicesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 1))),
      child: Column(
        children: [
          AccordionGroup(
            entries: [
              AccordionEntry(
                title: 'Sorveglianza Sanitaria e Idoneità Lavorativa',
                text: Column(
                  children: [
                    Text(
                      'Questa area copre tutte le attività di monitoraggio e valutazione dello stato di salute dei dipendenti.',
                      style: getWidgetTextStyle,
                    ),
                    Text(
                      'Include le visite mediche periodiche, gli esami di idoneità specifici per mansioni a rischio e la sorveglianza sanitaria continua per i lavoratori esposti a condizioni lavorative particolari.',
                      style: getWidgetTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'L’obiettivo è prevenire l’insorgenza di malattie professionali e garantire che ogni lavoratore sia idoneo a svolgere le proprie mansioni in sicurezza.',
                      style: getWidgetTextStyle,
                    ),
                    Text(
                      'Ci occupiamo anche della prevenzione di stress lavoro-correlato e problematiche psicosociali, garantendo un benessere psico-fisico ottimale.',
                      style: getWidgetTextStyle,
                    ),
                  ],
                ),
              ),
              AccordionEntry(
                title: ' Valutazione e Gestione dei Rischi',
                text: Column(
                  children: [
                    Text(
                      'Questa macro area comprende la valutazione dei rischi professionali e la gestione delle emergenze all’interno dell’azienda.',
                      style: getWidgetTextStyle,
                    ),
                    Text(
                      'Ci assicuriamo di individuare e analizzare i rischi fisici, chimici e biologici presenti sul luogo di lavoro e forniamo soluzioni su misura per ridurli o eliminarli.',
                      style: getWidgetTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Insieme all’azienda, sviluppiamo piani di sicurezza e piani di emergenza, con lo scopo di proteggere i lavoratori da potenziali incidenti e malattie. Garantiamo anche l’adeguamento a tutte le normative vigenti in materia di sicurezza e salute sul lavoro.',
                      style: getWidgetTextStyle,
                    ),
                  ],
                ),
              ),
              AccordionEntry(
                title: 'Prevenzione e Consulenza Normativa',
                text: Column(
                  children: [
                    Text(
                      'Offriamo consulenza completa sulla conformità normativa, supportando le aziende nell’adeguamento alle leggi e ai regolamenti in materia di salute e sicurezza.',
                      style: getWidgetTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Creiamo programmi di prevenzione personalizzati, mirati a ridurre i rischi lavorativi e migliorare le condizioni di lavoro. Aiutiamo le aziende a mantenere aggiornati i protocolli di sicurezza e le certificazioni richieste, garantendo che le strutture rispettino tutte le normative vigenti per tutelare la salute dei lavoratori.',
                      style: getWidgetTextStyle,
                    ),
                  ],
                ),
              ),
              AccordionEntry(
                title: 'Ergonomia e Benessere sul Lavoro',
                text: Column(
                  children: [
                    Text(
                      'Quest\'area si concentra sul miglioramento delle condizioni fisiche e mentali dei dipendenti attraverso la consulenza ergonomica e la promozione del benessere.',
                      style: getWidgetTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Valutiamo l’ergonomia delle postazioni di lavoro per prevenire lesioni muscolo-scheletriche, migliorando il comfort e la produttività.',
                      style: getWidgetTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Offriamo anche programmi di gestione dello stress e benessere psico-fisico, con l’obiettivo di migliorare la qualità della vita dei lavoratori e ridurre l’assenteismo causato da malattie correlate al lavoro.',
                      style: getWidgetTextStyle,
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

  TextStyle get getWidgetTextStyle => TextStyle(
        fontSize: 16,
        color: Color(
          ColorUtils.accentColor,
        ),
      );
}
