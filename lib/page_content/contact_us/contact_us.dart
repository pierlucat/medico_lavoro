import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/contact_us/widgets/contact_us_form.dart';
import 'package:medico_lavoro/page_content/contact_us/widgets/contact_us_info.dart';
import 'package:medico_lavoro/page_content/contact_us/widgets/contact_us_title.dart';
import 'package:medico_lavoro/utils/common_widgets/title_section.dart';
import 'package:medico_lavoro/utils/theme.dart';

class ContactUs extends StatelessWidget {
  //final GlobalKey navigationKey;
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: SizingUtils.leftRightMargin,
        vertical: SizingUtils.topBottomSectionMargin,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1500,
        ),
        child: Row(
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
