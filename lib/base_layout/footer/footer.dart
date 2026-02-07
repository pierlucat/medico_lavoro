import 'package:flutter/material.dart';
import 'package:medico_lavoro/base_layout/footer/widgets/socials.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../../utils/breakpoint_utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 600,
      decoration: BoxDecoration(
        color: Color(ColorUtils.footerBackground),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: SizingUtils.leftRightMarginL,
        vertical: SizingUtils.spaceL,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1500),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chi siamo:",
                          style: TextStyle(
                            fontSize: SizingUtils.footerTitleTextL,
                            color: Color(ColorUtils.footerText),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Toscanetti s.l.r.",
                          style: TextStyle(
                            fontSize: SizingUtils.bodyTextL,
                            color: Color(ColorUtils.footerText),
                          ),
                        ),
                        Text(
                          "Ci impegnamo ogni giorno per garantire la vostra sicurezza e la sicurezza dei vostri dipendenti.",
                          style: ThemeUtils.footerBodyTextFunc(context),
                        ),
                      ],
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Link utili:",
                          style: TextStyle(
                            fontSize: SizingUtils.footerTitleTextL,
                            color: Color(ColorUtils.footerText),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Home",
                            style: TextStyle(
                              fontSize: SizingUtils.bodyTextL,
                              color: Color(ColorUtils.footerText),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Chi siamo",
                            style: TextStyle(
                              fontSize: SizingUtils.bodyTextL,
                              color: Color(ColorUtils.footerText),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Servizi",
                            style: TextStyle(
                              fontSize: SizingUtils.bodyTextL,
                              color: Color(ColorUtils.footerText),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Legislazione",
                            style: TextStyle(
                              fontSize: SizingUtils.bodyTextL,
                              color: Color(ColorUtils.footerText),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Contatti",
                            style: TextStyle(
                              fontSize: SizingUtils.bodyTextL,
                              color: Color(ColorUtils.footerText),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "I nostri centri:",
                          style: TextStyle(
                            fontSize: SizingUtils.footerTitleTextL,
                            color: Color(ColorUtils.footerText),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "- Contrà Porta Santa Croce, 38, 36100 (VI)",
                          style: TextStyle(
                            fontSize: SizingUtils.bodyTextL,
                            color: Color(ColorUtils.footerText),
                          ),
                        ),
                        Text(
                          "- Stradella del Garofolino, 12, 36100 (VI)",
                          style: TextStyle(
                            fontSize: SizingUtils.bodyTextL,
                            color: Color(ColorUtils.footerText),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contatti:",
                          style: TextStyle(
                            fontSize: SizingUtils.footerTitleTextL,
                            color: Color(ColorUtils.footerText),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Tel: (+39) 340 9343235",
                          style: TextStyle(
                            fontSize: SizingUtils.bodyTextL,
                            color: Color(ColorUtils.footerText),
                          ),
                        ),
                        Text(
                          "Fax: (+39) 398 3207462",
                          style: TextStyle(
                            fontSize: SizingUtils.bodyTextL,
                            color: Color(ColorUtils.footerText),
                          ),
                        ),
                        Text(
                          "Mail: m.destefani.mdl@gmail.com",
                          style: TextStyle(
                            fontSize: SizingUtils.bodyTextL,
                            color: Color(ColorUtils.footerText),
                          ),
                        ),
                        Text(
                          "Mail: drtecchiomatteo@gmail.com",
                          style: TextStyle(
                            fontSize: SizingUtils.bodyTextL,
                            color: Color(ColorUtils.footerText),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Socials(),
            ],
          ),
        ),
      ),
    );
  }
}
