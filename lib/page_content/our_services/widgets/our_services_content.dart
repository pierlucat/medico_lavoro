import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/our_services/widgets/accordion_entry.dart';
import 'package:medico_lavoro/page_content/our_services/widgets/accordion_group.dart';
import 'package:medico_lavoro/utils/theme.dart';

class OurServicesContent extends StatelessWidget {
  const OurServicesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 1))),
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
                      'Questa area copre tutte le attività di monitoraggio e valutazione dello stato di salute dei dipendenti.',
                      style: getWidgetTextStyle(context),
                    ),
                    Text(
                      'Include le visite mediche periodiche, gli esami di idoneità specifici per mansioni a rischio e la sorveglianza sanitaria continua per i lavoratori esposti a condizioni lavorative particolari.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'L’obiettivo è prevenire l’insorgenza di malattie professionali e garantire che ogni lavoratore sia idoneo a svolgere le proprie mansioni in sicurezza.',
                      style: getWidgetTextStyle(context),
                    ),
                    Text(
                      'Ci occupiamo anche della prevenzione di stress lavoro-correlato e problematiche psicosociali, garantendo un benessere psico-fisico ottimale.',
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
                      'Questa macro area comprende la valutazione dei rischi professionali e la gestione delle emergenze all’interno dell’azienda.',
                      style: getWidgetTextStyle(context),
                    ),
                    Text(
                      'Ci assicuriamo di individuare e analizzare i rischi fisici, chimici e biologici presenti sul luogo di lavoro e forniamo soluzioni su misura per ridurli o eliminarli.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Insieme all’azienda, sviluppiamo piani di sicurezza e piani di emergenza, con lo scopo di proteggere i lavoratori da potenziali incidenti e malattie. Garantiamo anche l’adeguamento a tutte le normative vigenti in materia di sicurezza e salute sul lavoro.',
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
                      'Offriamo consulenza completa sulla conformità normativa, supportando le aziende nell’adeguamento alle leggi e ai regolamenti in materia di salute e sicurezza.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Creiamo programmi di prevenzione personalizzati, mirati a ridurre i rischi lavorativi e migliorare le condizioni di lavoro. Aiutiamo le aziende a mantenere aggiornati i protocolli di sicurezza e le certificazioni richieste, garantendo che le strutture rispettino tutte le normative vigenti per tutelare la salute dei lavoratori.',
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
                title: 'Attività Aggiungtive di Medicina del Lavoro',
                text: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quest\'area si concentra sul miglioramento delle condizioni fisiche e mentali dei dipendenti attraverso la consulenza ergonomica e la promozione del benessere.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Valutiamo l’ergonomia delle postazioni di lavoro per prevenire lesioni muscolo-scheletriche, migliorando il comfort e la produttività.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Offriamo anche programmi di gestione dello stress e benessere psico-fisico, con l’obiettivo di migliorare la qualità della vita dei lavoratori e ridurre l’assenteismo causato da malattie correlate al lavoro.',
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
      fontSize: ThemeUtils.bodyTextSizeFunc(context),
      color: Color(
        ColorUtils.accentColor,
      ),
    );
  }

  TextStyle getLinkTextStyle(BuildContext context) {
    return TextStyle(
      fontSize: ThemeUtils.bodyTextSizeFunc(context),
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
