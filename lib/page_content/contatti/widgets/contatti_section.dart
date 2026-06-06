import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medico_lavoro/pages/home_page/section_4/widgets/s4_form.dart';
import 'package:medico_lavoro/utils/theme.dart';

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
        // RigaContatti(
        //   icon: CupertinoIcons.phone,
        //   title: "Telefono",
        //   subtitle: "+39 123 456 7890",
        // ),
        // SizedBox(
        //   height: 40,
        // ),
        RigaContatti(
          icon: CupertinoIcons.mail,
          title: "Mail",
          subtitle: "drtecchiomatteo@gmail.com",
        ),
        SizedBox(
          height: 40,
        ),
        RigaContatti(
          icon: CupertinoIcons.mail,
          title: "Mail",
          subtitle: "m.destefani.mdl@gmail.com",
        ),
        SizedBox(
          height: 40,
        ),
        RigaContatti(
          icon: CupertinoIcons.placemark,
          title: "Indirizzo",
          subtitle: "Via Magellano, 2, Creazzo (VI)",
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
      crossAxisAlignment: CrossAxisAlignment
          .start, // Allinea l'icona in alto se il testo va su più righe
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
        // MODIFICA QUI: Expanded avvolge la Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: ThemeUtils.contentBold),
            Text(
              subtitle,
              style: ThemeUtils.content,
              // Opzionale: gestisce overflow se proprio non ci sta neanche a capo
              softWrap: true,
            ),
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
      child: S4Form(),
    );
  }
}
