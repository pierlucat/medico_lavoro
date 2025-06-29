import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/associates/widgets/person.dart';
import 'package:medico_lavoro/utils/common_widgets/title_section.dart';

import '../../utils/theme.dart';

class Associates extends StatelessWidget {
  const Associates({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        children: [
          TitleSection(title: "Legislazione: "),
          SizedBox(
            height: 40,
          ),
          // const Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Person(
          //       height: 600,
          //       direction: Direction.topToBottom,
          //       path: "assets/mario_fake.jpeg",
          //       name: "Liutprando Toscanetti",
          //       boldDescription: "Coglionazzo 1: ",
          //       description:
          //           "Da meno di un anno medico del lavoro. Estremamente incompetente. Appassionato di soldi punta a ciucciarvene più che può, protetto dal fatto che per legge avete bisogno di lui. Vedete di farvi inculare per bene che deve comprarsi il Porsche.",
          //     ),
          //     Person(
          //       height: 600,
          //       direction: Direction.topToBottom,
          //       path: "assets/pier_fake.png",
          //       name: "Gianni Toscanetti",
          //       boldDescription: "Coglionazzo 2: ",
          //       description:
          //           "Un poveraccio. Cerca di raccimolare qualche soldo extra facendo siti di merda tipo questobla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla.",
          //     ),
          //   ],
          // ),
          // SizedBox(
          //   height: 25,
          // ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Person(
                height: 320,
                direction: Direction.topToBottom,
                path: "assets/mario_fake.jpeg",
                name: "Liutprando Toscanetti",
                boldDescription: "Coglionazzo 1: ",
                description:
                    "Medico specializzato in Medicina del Lavoro. Collaboro attivamente con i datori di lavoro per valutare i rischi presenti nei luoghi di lavoro, per sviluppare programmi di prevenzione e sensibilizzazione, e condurre visite mediche periodiche per monitorare lo stato di salute dei dipendenti. Il mio approccio alla medicina del lavoro è incentrato sull'ascolto attivo dei bisogni e delle esigenze delle aziende clienti, sull'identificazione delle soluzioni più efficaci per garantire un ambiente lavorativo sicuro e salutare, e sulla promozione di una cultura della prevenzione e della responsabilità condivisa tra tutti gli attori coinvolti.",
              ),
              Person(
                height: 320,
                direction: Direction.topToBottom,
                path: "pier_fake.png",
                name: "Gianni Toscanetti",
                boldDescription: "Coglionazzo 2: ",
                description:
                    "Medico specializzato in Medicina del Lavoro. Grazie ad una vasta esperienza nella valutazione dei rischi, nella gestione delle emergenze, nella formazione del personale e nella consulenza alle aziende per l'implementazione di politiche e procedure di sicurezza efficaci, garantisco un approccio integrato e multidisciplinare alla tutela della salute dei lavoratori. Sono impegnato a rimanere costantemente aggiornato sulle nuove normative e best practice del settore, e ad applicare le mie competenze e conoscenze per migliorare continuamente le condizioni di lavoro e la qualità della vita dei dipendenti.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
