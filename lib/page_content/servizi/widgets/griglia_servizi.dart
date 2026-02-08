import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/servizi/widgets/tile_servizio.dart';

const tileMap = {
  'Sorveglianza Sanitaria': 'assets/sorveglianza_sanitaria_.png',
  'Rilascio del Giudizio di Idoneità': 'assets/giudizio_idoneità_.png',
  'Valutazione dei Rischi': 'assets/valutazione_rischi_.png',
  'Programmazione della Prevenzione': 'assets/programma_prevenzione_.png',
  'Sopralluoghi negli Ambienti di Lavoro': 'assets/sopralluoghi_.png',
  'Collaborazione con le Figure della Sicurezza':
      'assets/collaboratori_sicurezza_.png',
  'Partecipazione alle Riunioni Periodiche': 'assets/riunioni_periodiche_.png',
  'Gestione la Documentazione Sanitaria':
      'assets/documentazione_sanitaria_.png',
  'Formazione e Informazione dei Lavoratori':
      'assets/formazione_lavoratori_.png',
};

class GrigliaServizi extends StatelessWidget {
  const GrigliaServizi({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      runSpacing: 20,
      children: [
        ...tileMap.keys
            .map(
              (e) => TileServizio(
                title: e,
                image: tileMap[e]!,
                height: 300,
              ),
            )
            .toList()
      ],
    );
  }
}
