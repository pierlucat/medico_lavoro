import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medico_lavoro/page_content/servizi/widgets/tile_servizio.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class ChiSiamoTitle extends StatelessWidget {
  const ChiSiamoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      // 1. Determina se siamo su mobile
      bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

      // 2. Imposta dimensioni e spaziature in base al device
      // Spazio tra le card: 10 su mobile, 32 su desktop
      double spacing = isMobile ? 10.0 : 32.0;

      // Dimensioni card: Più piccole su mobile per farne stare eventualmente 2 per riga
      double tileWidth = isMobile ? 300.0 : 330.0;
      double tileHeight = isMobile ? 370.0 : 400.0;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: 'Il nostro studio eroga un ',
                ),
                TextSpan(
                  text: 'insieme strutturato di attività specialistiche ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      'previste dal D.Lgs. 81/08 e finalizzate alla tutela delle imprese e della salute dei lavoratori, alla riduzione dei rischi professionali e al pieno rispetto degli obblighi normativi in materia di sicurezza sul lavoro.',
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizingUtils.spaceL,
          ),
          Center(
            child: Wrap(
              spacing: spacing,
              runSpacing: 32,
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                TileServizio(
                  title: "Sorveglianza Sanitaria e Idoneità al Lavoro",
                  image: 'assets/sorveglianza_sanitaria_.png',
                  width: tileWidth,
                  height: tileHeight,
                  button: CommonFilledButton(
                    text: 'Scopri',
                    textColor: Colors.white,
                    callBack: () {
                      context.go('/servizi/sorveglianza-sanitaria');
                    },
                  ),
                ),
                TileServizio(
                  title: "Collaborazione alla Valutazione dei Rischi",
                  image: 'assets/sopralluoghi_.png',
                  width: tileWidth,
                  height: tileHeight,
                  button: CommonFilledButton(
                    text: 'Scopri',
                    textColor: Colors.white,
                    callBack: () {
                      context.go('/servizi/collaborazione-valutazione-rischi');
                    },
                  ),
                ),
                TileServizio(
                  title: "Consulenza Medica Aziendale",
                  image: 'assets/collaboratori_sicurezza_.png',
                  width: tileWidth,
                  height: tileHeight,
                  // button: CommonFilledButton(
                  //   text: 'Scopri',
                  //   textColor: Colors.white,
                  //   callBack: () {
                  //     context.go(
                  //       '/servizi/dettaglio-servizio',
                  //       extra: {
                  //         'titolo': 'Prevenzione e consulenza normativa',
                  //         'immagine': 'immagine_url',
                  //         'descrizione': 'Descrizione del servizio',
                  //       },
                  //     );
                  //   },
                  // ),
                ),
                TileServizio(
                  title: "Attività Aggiuntive di Medicina del Lavoro",
                  image: 'assets/riunioni_periodiche_.png',
                  width: tileWidth,
                  height: tileHeight,
                  button: CommonFilledButton(
                    text: 'Scopri',
                    textColor: Colors.white,
                    callBack: () {
                      context
                          .go('/servizi/attivita-aggiuntive-medicina-lavoro');
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizingUtils.spaceS,
          ),
        ],
      );
    });
  }
}

class ChiSiamoImage extends StatelessWidget {
  const ChiSiamoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        'assets/chi_siamo_1.jpg',
        //width: 800,
        height: 350,
        width: 350,
        fit: BoxFit.fill,
      ),
    );
  }
}

class ChiSiamoSubtitle extends StatelessWidget {
  const ChiSiamoSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft,
      widthFactor: 1.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: 'Il nostro studio si compone di ',
                ),
                TextSpan(
                  text: 'medici Specializzati in Medicina del Lavoro',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ' e collaboriamo con esperti in Igiene Industriale e sicurezza. Operiamo con trasparenza, serietá e tempestivitá per garantire:',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text:
                      '• La tutela della salute e dell’integrità psicofisica dei lavoratori;\n',
                ),
                TextSpan(
                  text:
                      '• Il rispetto degli obblighi normativi da parte delle aziende;\n',
                ),
                TextSpan(
                  text:
                      '• La promozione di ambienti di lavoro sani, sicuri ed efficienti.',
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizingUtils.spaceM,
          ),
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text:
                      'Che si tratti di una piccola impresa o di una realtà complessa, affianchiamo ogni cliente con soluzioni mirate e un supporto costante, dalla valutazione dei rischi alla gestione delle visite mediche, fino alla formazione e ai sopralluoghi periodici.',
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizingUtils.spaceM,
          ),
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text:
                      'La sicurezza è un dovere. Il benessere sul lavoro, una scelta responsabile.',
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: ThemeUtils.bodyTextFunc(context).copyWith(
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text:
                      'Scegliere il nostro studio significa investire nella salute della tua azienda.',
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizingUtils.spaceL,
          ),
        ],
      ),
    );
  }
}
