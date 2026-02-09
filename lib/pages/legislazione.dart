import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../base_layout/footer/footer.dart';
import '../page_content/legislazione/widgets/legislazione_content.dart';
import '../page_content/legislazione/widgets/legislazione_paragrafi.dart';
import '../utils/breakpoint_utils.dart';
import '../utils/theme.dart';

class Legislazione extends StatelessWidget {
  const Legislazione({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(ColorUtils.primaryColor),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizingUtils.leftRightMarginL,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 1500,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Il Contesto Normativo',
                          style: ThemeUtils.sectionContentTitle.copyWith(
                            fontSize: SizingUtils.sectionContentTitleL,
                          ),
                        ),
                        SizedBox(
                          height: SizingUtils.spaceL,
                        ),
                        LegislazioneParagrafi(),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: ResponsiveBreakpoints.of(context).isMobile
                      ? const EdgeInsets.symmetric(horizontal: 10.0)
                      : EdgeInsets.zero,
                  child: Text(
                    'Una lista degli articoli tratti dai decreti summenzionati, che rappresentano una parte dei servizi che noi offriamo, sono elencati qui in seguito:',
                    style: TextStyle(fontSize: SizingUtils.bodyTextL),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 1500,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white),
                    child: LegislazioneLista(),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
