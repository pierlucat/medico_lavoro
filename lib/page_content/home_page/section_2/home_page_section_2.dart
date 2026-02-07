import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/home_page/section_2/widgets/s2_accordion.dart';
import 'package:medico_lavoro/page_content/home_page/section_2/widgets/s2_title_desc.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/breakpoint_utils.dart';

class HomePageSection2 extends StatelessWidget {
  const HomePageSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: SizingUtils.spaceL,
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
        S2TitleDesc(),
        S2Accordion(),
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
                    textColor: Colors.white,
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
          child: S2TitleDesc(),
        ),
        Expanded(
          child: S2Accordion(),
        ),
      ],
    );
  }
}
