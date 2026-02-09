import 'package:flutter/material.dart';
import 'package:medico_lavoro/base_layout/footer/footer.dart';
import 'package:medico_lavoro/page_content/pages_lvl_2/servizi/widgets/info_box.dart';
import 'package:medico_lavoro/utils/breakpoint_utils.dart';
import 'package:medico_lavoro/utils/theme.dart';

class AttivitaAggiuntiveMedicinaLavoro extends StatelessWidget {
  const AttivitaAggiuntiveMedicinaLavoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              color: Color(ColorUtils.primaryColor),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizingUtils.leftRightMarginL,
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
                          "Attività Aggiuntive di Medicina del Lavoro",
                          style: ThemeUtils.sectionContentTitle.copyWith(
                            fontSize: SizingUtils.sectionContentTitleL,
                          ),
                        ),
                        SizedBox(
                          height: SizingUtils.spaceM,
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
                horizontal: SizingUtils.leftRightMarginL,
                vertical: SizingUtils.spaceValueFunc(context),
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1500),
                child: InfoBox(
                  text: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildParagraph(context,
                          "Secondo quanto stabilito dall’art. 35 del D.Lgs. 81/08, la riunione periodica è un requisito obbligatorio per le aziende che superano i 15 dipendenti e deve svolgersi con frequenza almeno annuale."),
                      _buildParagraph(context,
                          "La riunione periodica deve essere convocata anche quando avvengono significative variazioni nelle condizioni di lavoro e che possono esporre i lavoratori a nuovi, diversi o maggiori rischi, come può essere l’introduzione di nuove tecnologie che hanno riflessi sulla sicurezza e salute dei lavoratori."),
                      _buildParagraph(context,
                          "Sebbene non ci sia un obbligo per le aziende con un numero di dipendenti inferiore a 15 lavoratori, il rappresentante dei lavoratori per la sicurezza (RLS) può comunque convocare una riunione periodica se lo ritiene opportuno."),

                      // Sezione Domanda
                      _buildParagraph(context,
                          "Chi indice la riunione periodica e chi vi partecipa?",
                          isBold: true),

                      _buildParagraph(context,
                          "Il comma 1 dell’art. 35 del D.Lgs. 81/2008 obbliga il datore di lavoro a indire una riunione periodica nelle aziende alla quale devono partecipare:"),

                      _buildList(context, [
                        "il datore di lavoro o un suo rappresentante: convoca l’incontro e interagisce con gli altri partecipanti, valutando la competenza dei collaboratori presenti e, se necessario, affidando a terzi i propri compiti;",
                        "il responsabile del servizio di prevenzione e protezione dai rischi (RSPP): coordina le diverse figure coinvolte nella sicurezza e nella salute aziendale, verificando la correttezza delle sue azioni e assicurandosi che i compiti assegnati agli addetti del servizio di prevenzione e protezione vengano adeguatamente svolti;",
                        "il medico competente, ove nominato: è responsabile della redazione di un documento contenente i risultati della sorveglianza sanitaria effettuata tramite le visite mediche. Questi dati devono essere anonimi e aggregati. Inoltre, ha la facoltà di verbalizzare e sottoscrivere l’incontro per dimostrare l’adempimento dei suoi doveri;",
                        "il rappresentante dei lavoratori per la sicurezza (RLS): ha il compito di esporre le esigenze dei lavoratori relative alla sicurezza in azienda, sia per il mantenimento degli standard esistenti che per il miglioramento delle attività di protezione e prevenzione."
                      ]),

                      _buildParagraph(context,
                          "L’Allegato 3B è un documento fondamentale nell’ambito della sorveglianza sanitaria dei lavoratori, un elemento imprescindibile delineato dal D.Lgs 81/08, il testo unico sulla sicurezza sul lavoro nell’Art. 40 che definisce i rapporti del Medico Competente con il Servizio Sanitario Nazionale."),
                      _buildParagraph(context,
                          "Questo documento, di vitale importanza, rappresenta il fulcro della comunicazione tra il medico competente e l’INAIL, l’Istituto Nazionale Assicurazione Infortuni sul Lavoro."),
                      _buildParagraph(context,
                          "La sua funzione primaria è quella di raccogliere e trasmettere dati aggregati, sia di natura sanitaria che relativi ai rischi, riguardanti i lavoratori che sono stati sottoposti a sorveglianza sanitaria nel corso dell’anno precedente."),
                      _buildParagraph(context,
                          "Il documento offre un’analisi approfondita delle condizioni di salute e sicurezza aziendali, permettendo alle autorità competenti di valutare l’efficacia delle misure di prevenzione e protezione portate avanti durante l’anno."),
                      _buildParagraph(context,
                          "L’Allegato 3B non è semplicemente un adempimento burocratico, ma uno strumento di monitoraggio e prevenzione, che permette di tracciare un quadro completo della salute dei lavoratori in relazione ai rischi presenti nei loro ambienti di lavoro."),
                      _buildParagraph(context,
                          "Attraverso l’analisi dei dati contenuti in questo allegato, è possibile identificare tendenze, rilevare eventuali criticità e adottare misure preventive mirate, contribuendo così a creare ambienti di lavoro più sicuri e salubri."),
                    ],
                  ),
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildParagraph(BuildContext context, String text,
      {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: isBold
            ? ThemeUtils.bodyTextFunc(context)
                .copyWith(fontWeight: FontWeight.bold)
            : ThemeUtils.bodyTextFunc(context),
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
            padding: const EdgeInsets.only(bottom: 12.0, left: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bullet point
                Text("• ",
                    style: ThemeUtils.bodyTextFunc(context)
                        .copyWith(fontWeight: FontWeight.bold)),
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
