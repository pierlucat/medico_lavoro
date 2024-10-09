import 'package:flutter/material.dart';
import 'package:medico_lavoro/footer/widgets/socials.dart';
import 'package:medico_lavoro/utils/theme.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      decoration: BoxDecoration(
        color: Color(ColorUtils.footerBackground),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: SizingUtils.leftRightMargin,
        vertical: SizingUtils.topBottomSectionMargin,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chi siamo:",
                            style: ThemeUtils.footerTextStryle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Toscanetti s.l.r.",
                            style: ThemeUtils.footerTextStryle,
                          ),
                          Text(
                            "Ci impegnamo ogni giorno per garantire la vostra sicurezza e la sicurezza dei vostri dipendenti.",
                            style: ThemeUtils.footerTextStryle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "I nostri centri:",
                            style: ThemeUtils.footerTextStryle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("- Contrà Porta Santa Croce, 38, 36100 (VI)",
                              style: ThemeUtils.footerTextStryle),
                          Text("- Stradella del Garofolino, 12, 36100 (VI)",
                              style: ThemeUtils.footerTextStryle),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contatti:",
                            style: ThemeUtils.footerTextStryle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Tel: (+39) 340 9343235",
                              style: ThemeUtils.footerTextStryle),
                          Text(
                            "Fax: (+39) 398 3207462",
                            style: ThemeUtils.footerTextStryle,
                          ),
                          Text("Mail: info-toscanetti@group.it",
                              style: ThemeUtils.footerTextStryle),
                          Text("Mail: segreteria-toscanetti@group.it",
                              style: ThemeUtils.footerTextStryle),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Socials(),
            ],
          ),
        ),
      ),
    );
  }
}
