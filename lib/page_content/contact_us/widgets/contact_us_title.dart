import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class ContactUsTitle extends StatelessWidget {
  const ContactUsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.topLeft,
      widthFactor: 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Contattaci',
            style: ThemeUtils.homeContentTitle.copyWith(
              color: Color(
                ColorUtils.accentColor,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Il nostro team di esperti è pronto ad assisterti in ogni fase del percorso, per garantire il benessere dei tuoi dipendenti e la conformità normativa della tua azienda.',
            style: ThemeUtils.homeContentSubtitle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Compila il modulo o contattaci tramite i nostri recapiti. Saremo lieti di fornirti tutto il supporto di cui hai bisogno per creare un ambiente lavorativo sicuro e protetto.',
            style: ThemeUtils.homeContentSubtitle,
          ),
        ],
      ),
    );
  }
}
