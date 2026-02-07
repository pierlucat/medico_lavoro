import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';

class S1TitleDesc extends StatelessWidget {
  const S1TitleDesc({super.key});

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
            style: ThemeUtils.sectionContentTitle.copyWith(
              fontSize: SizingUtils.sectionContentTitleL,
            ),
          ),
          SizedBox(
            height: SizingUtils.spaceL,
          ),
          Text(
            'Affidati a studio De Stefani Tecchio per un servizio di Sorveglianza Sanitaria su misura per la tua azienda. Soluzioni specialistiche per la tutela della salute e sicurezza nei luoghi di lavoro. Offriamo un servizio professionale alle aziende e dedicato al rispetto delle normative e al benessere dei lavoratori.',
            style: TextStyle(
              fontSize: SizingUtils.bodyTextL,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: SizingUtils.spaceL,
          ),
          CommonFilledButton(
            text: 'Scopri',
            callBack: () {
              context.go('/chi-siamo');
            },
          ),
        ],
      ),
    );
  }
}
