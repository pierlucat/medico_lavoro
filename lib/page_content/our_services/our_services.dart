import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/our_services/widgets/our_services_content.dart';
import 'package:medico_lavoro/page_content/our_services/widgets/our_services_title.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../utils/breakpoint_utils.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1500,
        ),
        child: ResponsiveBreakpoints.of(context)
                .equals(BreakpointUtils.xsmall.name)
            ? _mobileView(context)
            : _standardView(),
      ),
    );
  }

  Widget _mobileView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OurServicesTitle(),
        OurServicesContent(),
        SizingUtils.spacerFunc(context),
        !ResponsiveBreakpoints.of(context).equals(BreakpointUtils.xsmall.name)
            ? SizedBox.shrink()
            : Row(
                children: [
                  Expanded(child: SizedBox()),
                  CommonFilledButton(
                    text: 'Approfondisci',
                    buttonStyle: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                    ),
                    textStyle: TextStyle(
                      color: Color(
                        ColorUtils.backgroundGrey,
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }

  Widget _standardView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: OurServicesTitle(),
        ),
        Expanded(child: OurServicesContent()),
      ],
    );
  }
}
