import 'package:flutter/material.dart';
import 'package:google_static_maps_controller/google_static_maps_controller.dart';
import 'package:medico_lavoro/page_content/contatti/widgets/contatti_section.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../utils/theme.dart';

class ContattiMap extends StatefulWidget {
  const ContattiMap({super.key});

  @override
  _ContattiMapState createState() => _ContattiMapState();
}

class _ContattiMapState extends State<ContattiMap> {
  int selectedIndex = 0;
  final List<Map<String, String>> locations = [
    {
      'title': 'Studio De Stefani Tecchio',
      'subtitle': 'Via Magellano, 2, 36051 Creazzo (VI)',
    },
  ];

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

    // LISTA DELLE SEDI
    Widget locationsList = Column(
      children: List.generate(locations.length, (index) {
        final location = locations[index];
        return Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(SizingUtils.radiusRectangle),
              child: InkWell(
                borderRadius:
                    BorderRadius.circular(SizingUtils.radiusRectangle),
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  // Su mobile usa tutto lo spazio disponibile nel contenitore padre
                  width: isMobile ? double.infinity : 300,
                  color: selectedIndex == index
                      ? Color(ColorUtils.primaryColor)
                      : Colors.transparent,
                  child: ListTile(
                    title: Text(
                      location['title']!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(location['subtitle']!),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5)
          ],
        );
      }),
    );

    // MAPPA
    // Usiamo LayoutBuilder per capire quanto spazio abbiamo davvero
    Widget mapWidget = ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Calcoliamo una larghezza sicura per la richiesta API
          // Su mobile chiediamo 600px per qualità, ma il widget sarà costretto a ridimensionarsi
          double requestWidth = isMobile ? 600 : 700;
          double requestHeight = isMobile ? 400 : 700;

          return FittedBox(
            // Questo assicura che l'immagine della mappa non sbordi mai
            fit: BoxFit.scaleDown,
            child: StaticMap(
              googleApiKey: 'AIzaSyAinDj9Hd-suJIMSvJOW2WnCmEXyvbpQdI',
              width: requestWidth,
              height: requestHeight,
              zoom: 18,
              scaleToDevicePixelRatio: true,
              visible: [
                GeocodedLocation.address(locations[selectedIndex]['subtitle']!),
              ],
              markers: [
                Marker(
                  locations: [
                    GeocodedLocation.latLng(
                        45.52322010713363, 11.485968499793223,
                    )
                    // GeocodedLocation.address(
                    //     locations[selectedIndex]['subtitle']!),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );

    // LAYOUT PRINCIPALE
    // Rimuoviamo la Row esterna e i calcoli manuali di larghezza.
    // Il Container ora si adatterà al padre (ContattiContent) che gestisce già i margini.
    return Container(
      width: isMobile
          ? double.infinity
          : null, // Su mobile riempie, su desktop si adatta al contenuto
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Color(ColorUtils.accentColor),
        ),
        borderRadius: BorderRadius.circular(SizingUtils.radiusRectangle),
        color: Color(0xFFF7F7F7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: isMobile
            ? _buildMobileLayout(locationsList, mapWidget)
            : _buildDesktopLayout(locationsList, mapWidget),
      ),
    );
  }

  // DESKTOP: Row orizzontale
  Widget _buildDesktopLayout(Widget list, Widget map) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(children: [list]),
        SizedBox(width: 50),
        IndicazioniSection(),
        SizedBox(width: 50),
        map,
      ],
    );
  }

  // MOBILE: Colonna verticale
  Widget _buildMobileLayout(Widget list, Widget map) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // 1. Contatti (Sopra)
        IndicazioniSection(),

        SizedBox(height: 20),
        Divider(color: Colors.grey.shade300),
        SizedBox(height: 20),

        // 2. Lista Sedi
        Align(
            alignment: Alignment.centerLeft,
            child: Text("Sede:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
        SizedBox(height: 10),
        list,

        SizedBox(height: 20),

        // 3. Mappa (Sotto)
        // Container width infinity per assicurare che FittedBox lavori correttamente
        Container(width: double.infinity, child: map),
      ],
    );
  }
}
