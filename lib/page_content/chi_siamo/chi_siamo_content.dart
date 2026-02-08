import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/page_content/chi_siamo/widgets/chi_siamo_content_blocs.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../../base_layout/footer/footer.dart';
import '../../utils/breakpoint_utils.dart';

class ChiSiamoContent extends StatelessWidget {
  const ChiSiamoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(ColorUtils.primaryColor),
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: SizingUtils.leftRightMarginL,
                vertical: SizingUtils.spaceL,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 1500,
                ),
                child: Column(
                  children: [
                    Text(
                      'La Medicina del Lavoro',
                      style: ThemeUtils.sectionContentTitle.copyWith(
                        fontSize: SizingUtils.sectionContentTitleL,
                      ),
                    ),
                    SizedBox(
                      height: SizingUtils.spaceM,
                    ),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         color: Color(0xFFF7F7F7),
                    //         borderRadius: BorderRadius.only(
                    //           topLeft:
                    //               Radius.circular(SizingUtils.radiusCircle),
                    //           bottomLeft:
                    //               Radius.circular(SizingUtils.radiusCircle),
                    //           bottomRight:
                    //               Radius.circular(SizingUtils.radiusCircle),
                    //         ),
                    //       ),
                    //       height: 630,
                    //       width: 450,
                    //       child: SizedBox(),
                    //     ),
                    //     Expanded(
                    //       child: Column(
                    //         children: [
                    //           Row(
                    //             children: [
                    //               Container(
                    //                 padding: EdgeInsets.all(20),
                    //                 width: 350,
                    //                 decoration: BoxDecoration(
                    //                   color: Color(0xFFF7F7F7),
                    //                   borderRadius: BorderRadius.only(
                    //                     topRight: Radius.circular(
                    //                         SizingUtils.radiusRectangle),
                    //                     bottomRight: Radius.circular(
                    //                         SizingUtils.radiusRectangle),
                    //                   ),
                    //                 ),
                    //                 child: Column(
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
                    //                   children: [
                    //                     SizedBox(
                    //                       height: 15,
                    //                     ),
                    //                     Text(
                    //                       "Dott. Mario De Stefani",
                    //                       style: TextStyle(
                    //                         fontWeight: FontWeight.bold,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       height: 30,
                    //                     ),
                    //                     Text(
                    //                       'Medico chirurgo specializzato in Medicina del Lavoro con oltre dieci anni di esperienza in aziende manifatturiere e del settore chimico.\n\nHa collaborato con importanti realtà industriali del Nord-Est per la gestione della sorveglianza sanitaria e dei piani di prevenzione.\n\nÈ appassionato di ergonomia e promuove programmi di benessere aziendale mirati a migliorare la qualità di vita dei lavoratori.',
                    //                     ),
                    //                     SizedBox(
                    //                       height: 15,
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Spacer(),
                    //             ],
                    //           ),
                    //           SizedBox(
                    //             height: 30,
                    //           ),
                    //           Row(
                    //             children: [
                    //               Spacer(),
                    //               Container(
                    //                 padding: EdgeInsets.all(20),
                    //                 width: 350,
                    //                 decoration: BoxDecoration(
                    //                   color: Color(0xFFF7F7F7),
                    //                   borderRadius: BorderRadius.only(
                    //                     bottomLeft: Radius.circular(
                    //                         SizingUtils.radiusRectangle),
                    //                     topLeft: Radius.circular(
                    //                         SizingUtils.radiusRectangle),
                    //                   ),
                    //                 ),
                    //                 child: Column(
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
                    //                   children: [
                    //                     SizedBox(
                    //                       height: 15,
                    //                     ),
                    //                     Text(
                    //                       "Dott. Mario De Stefani",
                    //                       style: TextStyle(
                    //                         fontWeight: FontWeight.bold,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       height: 30,
                    //                     ),
                    //                     Text(
                    //                       'Medico chirurgo specializzato in Medicina del Lavoro con oltre dieci anni di esperienza in aziende manifatturiere e del settore chimico.\n\nHa collaborato con importanti realtà industriali del Nord-Est per la gestione della sorveglianza sanitaria e dei piani di prevenzione.\n\nÈ appassionato di ergonomia e promuove programmi di benessere aziendale mirati a migliorare la qualità di vita dei lavoratori.',
                    //                     ),
                    //                     SizedBox(
                    //                       height: 15,
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         color: Color(0xFFF7F7F7),
                    //         borderRadius: BorderRadius.only(
                    //           topRight:
                    //               Radius.circular(SizingUtils.radiusCircle),
                    //           bottomRight:
                    //               Radius.circular(SizingUtils.radiusCircle),
                    //           topLeft:
                    //               Radius.circular(SizingUtils.radiusCircle),
                    //         ),
                    //       ),
                    //       height: 630,
                    //       width: 450,
                    //       child: SizedBox(),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: SizingUtils.leftRightMarginL,
              vertical: SizingUtils.spaceL,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1500,
              ),
              child: ChiSiamoSubtitle(),
            ),
          ),
        ),
        Footer(),
      ],
    );
  }
}
