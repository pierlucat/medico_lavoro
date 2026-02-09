import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medico_lavoro/utils/breakpoint_utils.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

class S2TitleDesc extends StatelessWidget {
  const S2TitleDesc({super.key});

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
            fontSize: SizingUtils.sectionContentTitleL,
          ),
        ),
        SizedBox(
          height: SizingUtils.spaceL,
        ),
        ResponsiveBreakpoints.of(context).equals(BreakpointUtils.mobile.name)
            ? SizedBox.shrink()
            : CommonFilledButton(
                text: 'Approfondisci',
                textColor: Colors.white,
                callBack: () {
                  context.go('/servizi');
                },
              ),
      ],
    );
  }
}
