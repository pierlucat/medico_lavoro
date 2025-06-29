import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/our_services/widgets/accordion_entry.dart';
import 'package:medico_lavoro/page_content/our_services/widgets/accordion_group.dart';
import 'package:medico_lavoro/utils/theme.dart';

class LegislazioneLista extends StatelessWidget {
  const LegislazioneLista({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 1))),
      child: Column(
        children: [
          AccordionGroup(
            entries: [
              AccordionEntry(
                title:
                    'Categoria di appartenenza per il corso di primo soccorso',
                text: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lo svolgimento del corso per gli addetti al primo soccorso nominati in azienda è obbligatorio ai sensi del D.lgs. 81/2008 e dell’art. 3 co. 5 del D. M. 388/2003.',
                      style: getWidgetTextStyle(context),
                    ),
                    Text(
                      'Le aziende sono classificate in 3 categorie (A, B, C), in ragione della tipologia di attività svolta, del numero di lavoratori occupati e dei fattori di rischio.',
                      style: getWidgetTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Al gruppo A (16 ore) appartengono le aziende con più di 5 lavoratori (dipendenti, titolare o soci) e con lavorazioni a cui l’INAIL attribuisce un indice infortunistico superiore a quattro (vedi elenco seguente):',
                      style: getWidgetTextStyle(context),
                    ),
                    Text(
                      'Al gruppo B e C (12 ore) appartengono invece le aziende con meno di 5 dipendenti o con un numero superiore ma non appartenenti all’elenco precedente.',
                      style: getWidgetTextStyle(context),
                    ),
                    Text(
                      'Al termine del corso (con obbligo di frequenza del totale delle ore previste) viene rilasciato il relativo attestato che ha una validità triennale, alla cui scadenza è necessario un rinnovo che necessita la frequentazione di un corso di aggiornamento della durate di ore 6 per le aziende del gruppo A, di ore 4 per le aziende del gruppo B e C.',
                      style: getWidgetTextStyle(context),
                    ),
                  ],
                ),
              ),
              AccordionEntry(
                title: ' D.lgs 81/08 - Documento della sicurezza sul lavoro',
                text: Column(
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
                  ],
                ),
              ),
              AccordionEntry(
                title:
                    'D.lgs 106/09 - Disposizioni integrative e correttive del decreto legislativo 81/08',
                text: Column(
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
                  ],
                ),
              ),
              AccordionEntry(
                title:
                    'Art.17 - D.lgs 81/08 - Valutazione dei rischi per la salute e la sicurezza',
                text: Column(
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
}
