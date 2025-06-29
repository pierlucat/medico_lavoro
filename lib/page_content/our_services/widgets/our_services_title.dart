import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class OurServicesTitle extends StatelessWidget {
  const OurServicesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'I nostri servizi',
          style: ThemeUtils.sectionContentTitle.copyWith(
            color: Color(
              ColorUtils.accentColor,
            ),
            fontSize: BreakpointUtils.getResponsiveValue(
              context,
              [
                SizingUtils.sectionContentTitleXS,
                SizingUtils.sectionContentTitleS,
                SizingUtils.sectionContentTitleM,
                SizingUtils.sectionContentTitleL
              ],
            ),
          ),
        ),
        SizedBox(
          height: SizingUtils.spaceValueFunc(context),
        ),
        ResponsiveBreakpoints.of(context).equals(BreakpointUtils.xsmall.name)
            ? SizedBox.shrink()
            : CommonFilledButton(
                text: 'Approfondisci',
                buttonStyle: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                ),
                textStyle: TextStyle(
                  color: Color(
                    ColorUtils.backgroundGrey,
                  ),
                ),
                callBack: () {
                  context.go('/servizi');
                },
              ),
      ],
    );
  }
}
