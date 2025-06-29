import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/contact_us/widgets/contact_us_form.dart';
import 'package:medico_lavoro/page_content/contact_us/widgets/contact_us_info.dart';
import 'package:medico_lavoro/page_content/contact_us/widgets/contact_us_title.dart';
import 'package:medico_lavoro/utils/common_widgets/title_section.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../utils/breakpoint_utils.dart';

class ContactUs extends StatelessWidget {
  //final GlobalKey navigationKey;
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            ? Column(
                children: [
                  ContactUsTitle(),
                  SizingUtils.spacerFunc(context),
                  ContactUsForm(),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ContactUsTitle(),
                  ),
                  Expanded(
                    child: ContactUsForm(),
                  ),
                  //HomeTitle(),
                ],
              ),
      ),
    );
  }
}
