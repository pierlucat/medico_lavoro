import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/our_services/widgets/our_services_content.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I nostri servizi',
                    style: ThemeUtils.homeContentTitle.copyWith(
                      color: Color(
                        ColorUtils.accentColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CommonFilledButton(
                    text: 'Approfondisci',
                    buttonStyle: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                    ),
                    textStyle: TextStyle(
                      fontSize: 18,
                      color: Color(
                        ColorUtils.backgroundGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: OurServicesContent()),
          ],
        ),
      ),
    );
  }
}
