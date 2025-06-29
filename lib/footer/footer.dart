import 'package:flutter/material.dart';
import 'package:medico_lavoro/footer/widgets/socials.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../utils/breakpoint_utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      decoration: BoxDecoration(
        color: Color(ColorUtils.footerBackground),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: BreakpointUtils.getResponsiveValue(
          context,
          [
            SizingUtils.leftRightMarginXS,
            SizingUtils.leftRightMarginS,
            SizingUtils.leftRightMarginM,
            SizingUtils.leftRightMarginL
          ],
        ),
        vertical: SizingUtils.spaceValueFunc(context),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chi siamo:",
                            style: ThemeUtils.footerTitleTextFunc(context),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Toscanetti s.l.r.",
                            style: ThemeUtils.footerBodyTextFunc(context),
                          ),
                          Text(
                            "Ci impegnamo ogni giorno per garantire la vostra sicurezza e la sicurezza dei vostri dipendenti.",
                            style: ThemeUtils.footerBodyTextFunc(context),
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
                            "Link utili:",
                            style: ThemeUtils.footerTitleTextFunc(context),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Home",
                              style: ThemeUtils.footerBodyTextFunc(context),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Chi siamo",
                              style: ThemeUtils.footerBodyTextFunc(context),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Servizi",
                              style: ThemeUtils.footerBodyTextFunc(context),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Legislazione",
                              style: ThemeUtils.footerBodyTextFunc(context),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Contatti",
                              style: ThemeUtils.footerBodyTextFunc(context),
                            ),
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
                            style: ThemeUtils.footerTitleTextFunc(context),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "- Contrà Porta Santa Croce, 38, 36100 (VI)",
                            style: ThemeUtils.footerBodyTextFunc(context),
                          ),
                          Text(
                            "- Stradella del Garofolino, 12, 36100 (VI)",
                            style: ThemeUtils.footerBodyTextFunc(context),
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
                            "Contatti:",
                            style: ThemeUtils.footerTitleTextFunc(context),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Tel: (+39) 340 9343235",
                            style: ThemeUtils.footerBodyTextFunc(context),
                          ),
                          Text(
                            "Fax: (+39) 398 3207462",
                            style: ThemeUtils.footerBodyTextFunc(context),
                          ),
                          Text(
                            "Mail: info-toscanetti@group.it",
                            style: ThemeUtils.footerBodyTextFunc(context),
                          ),
                          Text(
                            "Mail: segreteria-toscanetti@group.it",
                            style: ThemeUtils.footerBodyTextFunc(context),
                          ),
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
