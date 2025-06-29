import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueGrey),
            child: Text('Menu',
                style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Chiude il drawer
              context.go('/');
            },
          ),
          ListTile(
            title: const Text('Chi siamo'),
            onTap: () {
              Navigator.pop(context);
              context.go('/chi-siamo');
            },
          ),
          ListTile(
            title: const Text('Servizi'),
            onTap: () {
              Navigator.pop(context);
              context.go('/servizi');
            },
          ),
          ListTile(
            title: const Text('Contatti'),
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
