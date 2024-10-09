import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/common_widgets/content_section.dart';
import 'package:medico_lavoro/utils/theme.dart';

class ContactUsInfo extends StatelessWidget {
  const ContactUsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AccentContentSection(
      widget: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sedi:",
                style: ThemeUtils.content,
              ),
              Text(
                "Stradella del Garofolino, 12, 36100 (VI)",
                style: ThemeUtils.contentSmall,
              ),
              Text(
                "Contrà Porta Santa Croce, 74, 36100 (VI)",
                style: ThemeUtils.contentSmall,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 100,
            height: 0.5,
            color: Color(
              ColorUtils.accentColor,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Orario:",
                style: ThemeUtils.content,
              ),
              Text(
                "Lun - Ven: 9.00 - 18.00",
                style: ThemeUtils.contentSmall,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 100,
            height: 0.5,
            color: Color(
              ColorUtils.accentColor,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Contatti:",
            style: ThemeUtils.content,
          ),
          Text(
            "Mail: sede1@gmail.com",
            style: ThemeUtils.contentSmall,
          ),
          Text(
            "Mail: sede2@gmail.com",
            style: ThemeUtils.contentSmall,
          ),
          Text(
            "Tel: 340-9357843",
            style: ThemeUtils.contentSmall,
          ),
          Text(
            "Fax: 0444-587435",
            style: ThemeUtils.contentSmall,
          ),
        ],
      ),
    );
  }
}
