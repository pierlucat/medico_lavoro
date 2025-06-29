import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:medico_lavoro/pages/home.dart';

import '../base_layout/base_layout.dart';
import '../page_content/servizi/dettaglio_servizio.dart';
import '../pages/chi_siamo.dart';
import '../pages/contatti.dart';
import '../pages/legislazione.dart';
import '../pages/servizi.dart';

class GoRouterUtils {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return BaseLayout(child: child); // AppBar fissa, child cambia
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                PageNotifier.currentPage.value = '/';
              });
              return const Home();
            },
          ),
          GoRoute(
            path: '/chi-siamo',
            builder: (context, state) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                PageNotifier.currentPage.value = '/chi-siamo';
              });

              return const ChiSiamo();
            },
          ),
          GoRoute(
            path: '/servizi',
            builder: (context, state) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                PageNotifier.currentPage.value = '/servizi';
              });
              return const Servizi();
            },
            routes: [
              GoRoute(
                path: 'dettaglio-servizio',
                builder: (context, state) {
                  final args = state.extra as Map<String,
                      dynamic>?; // Retrieve parameters from `extra`
                  final titolo = args?['titolo'] ?? '';
                  final immagine = args?['immagine'] ?? '';
                  final descrizione = args?['descrizione'] ?? '';
                  return DettaglioServizio(
                    title: titolo,
                    image: immagine,
                    description: descrizione,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: '/legislazione',
            builder: (context, state) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                PageNotifier.currentPage.value = '/legislazione';
              });
              return const Legislazione();
            },
          ),
          GoRoute(
            path: '/contatti',
            builder: (context, state) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                PageNotifier.currentPage.value = '/contatti';
              });
              return const Contatti();
            },
          ),
        ],
      ),
    ],
  );
}

class PageNotifier {
  static final ValueNotifier<String> currentPage = ValueNotifier<String>('/');
}
