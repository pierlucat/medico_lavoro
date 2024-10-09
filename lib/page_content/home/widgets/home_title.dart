import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft,
      widthFactor: 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Salute e Sicurezza al Lavoro',
            style: ThemeUtils.homeContentTitle,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Affidati allo Studio Toscanetti per la Sorveglianza Sanitaria su misura per la tua azienda. Soluzioni specialistiche per la tutela della salute e sicurezza nei luoghi di lavoro. Un servizio professionale dedicato al rispetto delle normative e al benessere dei lavoratori.',
            style: ThemeUtils.homeContentSubtitle,
          ),
          SizedBox(
            height: 50,
          ),
          CommonFilledButton(
            text: 'Scopri',
            buttonStyle: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
