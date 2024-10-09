import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/our_place/widgets/our_place_content.dart';
import 'package:medico_lavoro/page_content/our_place/widgets/our_place_image.dart';
import 'package:medico_lavoro/utils/theme.dart';

class OurPlace extends StatelessWidget {
  const OurPlace({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: OurPlaceImage()),
            Expanded(child: OurPlaceContent()),
            //HomeTitle(),
          ],
        ),
      ),
    );
  }
}
