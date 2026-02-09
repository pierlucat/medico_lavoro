import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/page_content/contatti/widgets/contatti_map.dart';
import 'package:medico_lavoro/page_content/contatti/widgets/contatti_section.dart';
import 'package:medico_lavoro/page_content/contatti/widgets/contatti_title.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../../base_layout/footer/footer.dart';
import '../../utils/breakpoint_utils.dart';

class ContattiContent extends StatelessWidget {
  const ContattiContent({super.key});

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
                vertical: SizingUtils.spaceValueFunc(context),
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 1500,
                ),
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Contatti',
                      style: ThemeUtils.sectionContentTitle.copyWith(
                        fontSize: SizingUtils.sectionContentTitleL,
                      ),
                    ),
                    SizedBox(
                      height: SizingUtils.spaceM,
                    ),
                    ContattiTitle(),
                    SizedBox(
                      height: SizingUtils.spaceM,
                    ),
                    ContattiSection(),
                    SizedBox(
                      height: SizingUtils.spaceM,
                    ),
                    ContattiMap(),
                    SizedBox(
                      height: SizingUtils.spaceM,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Footer(),
      ],
    );
  }
}
