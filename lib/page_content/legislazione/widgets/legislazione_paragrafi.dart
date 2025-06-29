import 'package:flutter/material.dart';

import '../../../utils/theme.dart';
import '../../chi_siamo/widgets/chi_siamo_content_blocs.dart';

class LegislazioneParagrafi extends StatelessWidget {
  const LegislazioneParagrafi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 500,
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9),
                      ),
                      border: Border(
                        left: BorderSide(
                          color: Color(ColorUtils.accentColor),
                          width: 1,
                        ),
                        top: BorderSide(
                          color: Color(ColorUtils.accentColor),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                        'Studio Toscanetti offre i propri servizi ad enti, associazioni, amministrazioni comunali, case di riposo, cliniche private, ospedali, istituti bancari, P.M.I. (Piccole e Medie Imprese), S.P.A. (Società per Azioni), la propria collaborazione e assistenza completa per l’espletamento e la regolarizzazione agli obblighi di legge.'),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(9),
                      ),
                      border: Border(
                        left: BorderSide(
                          color: Color(ColorUtils.accentColor),
                          width: 1,
                        ),
                        bottom: BorderSide(
                          color: Color(ColorUtils.accentColor),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                        'Studio Toscanetti con le sue sedi dislocate a Thiene e Vicenza opera principalmente in tutto il territorio veneto affermandosi nelle provincie di Padova, Vicenza, Rovigo e Verona, oltre a seguire realtà di primo piano anche al di fuori dei confini regionali.'),
                  ),
                ],
              ),
            ),
            Spacer(),
            ChiSiamoImage(),
            Spacer(),
            SizedBox(
              width: 500,
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9),
                      ),
                      border: Border(
                        right: BorderSide(
                          color: Color(ColorUtils.accentColor),
                          width: 1,
                        ),
                        top: BorderSide(
                          color: Color(ColorUtils.accentColor),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                        'Studio Toscanetti è una società di consulenza per la sicurezza sul lavoro, costituita da un pool di professionisti altamente specializzati e con pluriennale esperienza nei settori della medicina del lavoro, che utilizza risorse e mezzi di alto livello tecnologico, in grado di rispondere a tutte le necessità di adeguamento alle normative vigenti, sviluppando le proprie competenze della Sicurezza e Salute nei luoghi di Lavoro e nella tutela Ambientale.'),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(9),
                      ),
                      border: Border(
                        right: BorderSide(
                          color: Color(ColorUtils.accentColor),
                          width: 1,
                        ),
                        bottom: BorderSide(
                          color: Color(ColorUtils.accentColor),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                        'In relazione al decreto legislativo sulla sicurezza sul lavoro del 9 aprile 2008 con le sue successive correzioni ed integrazioni (tra cui il con il D. Lgs. 106/09), Studio Toscanetti è in grado di rispondere ad ogni vostro quesito e ad ogni vostra esigenza.'),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Text(
          'Una lista degli articoli tratti dai decreti summenzionati, che rappresentano una parte dei servizi che noi offriamo, sono elencati qui in seguito:',
        ),
      ],
    );
  }
}
