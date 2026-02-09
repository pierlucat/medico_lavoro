import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medico_lavoro/utils/theme.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Definizione comune per lo stile del testo
    const textStyle = TextStyle(
      fontSize:
          24, // Ho ridotto leggermente da 32 per far stare tutto meglio su mobile, ma puoi rimettere 32
      fontWeight: FontWeight.w500,
    );

    // Colore delle icone
    final iconColor = Color(ColorUtils.accentColor);
    const double iconSize = 30;

    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        // padding: EdgeInsets.zero è fondamentale per colorare anche la status bar
        padding: EdgeInsets.zero,
        children: [
          // HEADER
          DrawerHeader(
            // Questo rimuove la "barra" o lo spazio vuoto sotto l'header
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(ColorUtils.accentColor),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // LISTA VOCI
          ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: Icon(Icons.home_rounded, size: iconSize, color: iconColor),
            title: const Text('Home', style: textStyle),
            onTap: () {
              Navigator.pop(context);
              context.go('/');
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            leading:
                Icon(Icons.groups_rounded, size: iconSize, color: iconColor),
            title: const Text('Chi siamo', style: textStyle),
            onTap: () {
              Navigator.pop(context);
              context.go('/chi-siamo');
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: Icon(Icons.medical_services_outlined,
                size: iconSize, color: iconColor),
            title: const Text('Servizi', style: textStyle),
            onTap: () {
              Navigator.pop(context);
              context.go('/servizi');
            },
          ),
          // Ho aggiunto Legislazione perché fa parte del tuo menu principale
          ListTile(
            contentPadding: EdgeInsets.all(10),
            leading:
                Icon(Icons.gavel_rounded, size: iconSize, color: iconColor),
            title: const Text('Legislazione', style: textStyle),
            onTap: () {
              Navigator.pop(context);
              context.go('/legislazione');
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: Icon(Icons.mail_outline_rounded,
                size: iconSize, color: iconColor),
            title: const Text('Contatti', style: textStyle),
            onTap: () {
              Navigator.pop(context);
              context.go('/contatti');
            },
          ),
        ],
      ),
    );
  }
}
