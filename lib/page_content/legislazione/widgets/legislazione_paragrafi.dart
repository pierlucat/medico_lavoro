import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/theme.dart';
import '../../chi_siamo/widgets/chi_siamo_content_blocs.dart';

class LegislazioneParagrafi extends StatelessWidget {
  const LegislazioneParagrafi({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    TextStyle textStyle = ThemeUtils.bodyTextFunc(context);

    // Definiamo un BorderSide comune per pulizia codice
    final BorderSide accentSide =
        BorderSide(color: Color(ColorUtils.accentColor), width: 1);

    // --- LOGICA BORDI ---
    // SU MOBILE: 3 lati. Il lato "mancante" è quello interno tra i due testi.
    // SU DESKTOP: 2 lati (angolo).

    // Card 1 (Alto Sinistra / Primo Mobile)
    Border border1 = isMobile
        ? Border(
            top: accentSide,
            left: accentSide,
            right: accentSide) // Mobile: Aperto sotto
        : Border(top: accentSide, left: accentSide); // Desktop: Angolo

    // Card 2 (Basso Sinistra / Secondo Mobile)
    Border border2 = isMobile
        ? Border(
            bottom: accentSide,
            left: accentSide,
            right: accentSide) // Mobile: Aperto sopra
        : Border(bottom: accentSide, left: accentSide); // Desktop: Angolo

    // Card 3 (Alto Destra / Terzo Mobile)
    Border border3 = isMobile
        ? Border(
            top: accentSide,
            left: accentSide,
            right: accentSide) // Mobile: Aperto sotto
        : Border(top: accentSide, right: accentSide); // Desktop: Angolo

    // Card 4 (Basso Destra / Quarto Mobile)
    Border border4 = isMobile
        ? Border(
            bottom: accentSide,
            left: accentSide,
            right: accentSide) // Mobile: Aperto sopra
        : Border(bottom: accentSide, right: accentSide); // Desktop: Angolo

    // --- WIDGET CARDS ---

    Widget card1 = _buildCard(
      text:
          'Studio Medico De Stefani Tecchio offre i propri servizi ad enti pubblici e privati la propria collaborazione e assistenza completa per l\'espletamento e la regolarizzazione degli obblighi di legge in termini di salute e sicurezza sul lavoro.',
      borderRadius: isMobile
          ? const BorderRadius.only(
              topLeft: Radius.circular(9), topRight: Radius.circular(9))
          : const BorderRadius.only(topLeft: Radius.circular(9)),
      border: border1,
      style: textStyle,
    );

    Widget card2 = _buildCard(
      text:
          'Studio Medico De Stefani Tecchio opera principalmente in tutto il territorio veneto affermandosi nelle province di Vicenza, Padova, Rovigo e Verona oltre a seguire realtá di primo piano anche al di fuori dei confini regionali.',
      borderRadius: isMobile
          ? const BorderRadius.only(
              bottomLeft: Radius.circular(9), bottomRight: Radius.circular(9))
          : const BorderRadius.only(bottomLeft: Radius.circular(9)),
      border: border2,
      style: textStyle,
    );

    Widget card3 = _buildCard(
      text:
          'Studio Medico De Steafni Tecchio è una società di consulenza per la sicurezza sul lavoro, costituita da un pool di professionisti altamente specializzati e con pluriennale esperienza nei settori della medicina del lavoro.',
      borderRadius: isMobile
          ? const BorderRadius.only(
              topLeft: Radius.circular(9), topRight: Radius.circular(9))
          : const BorderRadius.only(topRight: Radius.circular(9)),
      border: border3,
      style: textStyle,
    );

    Widget card4 = _buildCard(
      text:
          'In relazione al decreto legislativo sulla sicurezza sul lavoro del 9 aprile 2008 con le sue successive correzioni ed integrazioni (tra cui il con il D. Lgs. 106/09), Studio De Stefani Tecchio è in grado di rispondere ad ogni vostro quesito e ad ogni vostra esigenza.',
      borderRadius: isMobile
          ? const BorderRadius.only(
              bottomLeft: Radius.circular(9), bottomRight: Radius.circular(9))
          : const BorderRadius.only(bottomRight: Radius.circular(9)),
      border: border4,
      style: textStyle,
    );

    if (isMobile) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                card1,
                const SizedBox(height: 10), // Spazio "aperto" tra i due box
                card2,
                const SizedBox(height: 30),
                const ChiSiamoImage(),
                const SizedBox(height: 30),
                card3,
                const SizedBox(height: 10), // Spazio "aperto" tra i due box
                card4,
              ],
            ),
          ),
        ],
      );
    } else {
      // USIAMO INTRINSIC HEIGHT PER FORZARE L'ALTEZZA UGUALE
      return IntrinsicHeight(
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // Estende le colonne verticalmente
          children: [
            // COLONNA SINISTRA
            SizedBox(
              width: 500,
              child: Column(
                // Spinge i widget agli estremi del contenitore allungato
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  card1,
                  const SizedBox(height: 20),
                  card2,
                ],
              ),
            ),

            const Spacer(),
            // L'immagine potrebbe necessitare di essere centrata se più corta delle colonne
            const Center(child: ChiSiamoImage()),
            const Spacer(),

            // COLONNA DESTRA (Quella che comanda l'altezza perché ha più testo)
            SizedBox(
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  card3,
                  const SizedBox(height: 20),
                  card4,
                ],
              ),
            ),
          ],
        ),
      );
    }
  }

  Widget _buildCard({
    required String text,
    required BorderRadius borderRadius,
    required BoxBorder border,
    required TextStyle style,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.transparent, // IMPORTANTE: Risolve i "bordi fantasma"
        borderRadius: borderRadius,
        border: border,
      ),
      child: Text(text, style: style),
    );
  }
}
