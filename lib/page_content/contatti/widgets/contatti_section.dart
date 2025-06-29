import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../../contact_us/widgets/contact_us_form.dart';

class ContattiSection extends StatelessWidget {
  const ContattiSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FormSection();
  }
}

class IndicazioniSection extends StatelessWidget {
  const IndicazioniSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RigaContatti(
          icon: CupertinoIcons.phone,
          title: "Telefono",
          subtitle: "+39 123 456 7890",
        ),
        SizedBox(
          height: 40,
        ),
        RigaContatti(
          icon: CupertinoIcons.mail,
          title: "Mail",
          subtitle: "info@medilavoro.it",
        ),
        SizedBox(
          height: 40,
        ),
        RigaContatti(
          icon: CupertinoIcons.placemark,
          title: "Indirizzo",
          subtitle: "Via Esempio 123, Città, CAP",
        ),
        SizedBox(
          height: 40,
        ),
        RigaContatti(
          icon: CupertinoIcons.clock,
          title: "Orari",
          subtitle: "Lun-Ven: 9:00-18:00",
        ),
      ],
    );
  }
}

class RigaContatti extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const RigaContatti({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: Color(ColorUtils.primaryColor),
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Icon(
                icon,
                color: Color(0xFF0084C7),
              ),
            ),
          ),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: ThemeUtils.contentBold),
            Text(subtitle, style: ThemeUtils.content),
          ],
        )
      ],
    );
  }
}

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ContactUsForm(),
    );
  }
}
