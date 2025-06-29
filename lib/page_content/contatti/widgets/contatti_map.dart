import 'package:flutter/material.dart';
import 'package:google_static_maps_controller/google_static_maps_controller.dart';
import 'package:medico_lavoro/page_content/contatti/widgets/contatti_section.dart';

import '../../../utils/theme.dart';

class ContattiMap extends StatefulWidget {
  const ContattiMap({super.key});

  @override
  _ContattiMapState createState() => _ContattiMapState();
}

class _ContattiMapState extends State<ContattiMap> {
  int selectedIndex = 0; // Tracks the selected ListTile
  final List<Map<String, String>> locations = [
    {
      'title': 'Studio A',
      'subtitle': 'Via Roma, 123, 00100 Roma',
    },
    {
      'title': 'Studio B',
      'subtitle': 'Corso Palladio, 15, 36100, Vicenza',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Color(
                ColorUtils.accentColor,
              ),
            ),
            borderRadius: BorderRadius.circular(25),
            color: Color(0xFFF7F7F7),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: List.generate(locations.length, (index) {
                    final location = locations[index];
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(25),
                            onTap: () {
                              setState(() {
                                selectedIndex = index; // Update selected index
                              });
                            },
                            child: Container(
                              width: 300,
                              color: selectedIndex == index
                                  ? Color(ColorUtils
                                      .primaryColor) // Highlight selected ListTile
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
                        SizedBox(
                          height: 5,
                        )
                      ],
                    );
                  }),
                ),
                SizedBox(
                  width: 50,
                ),
                IndicazioniSection(),
                SizedBox(
                  width: 50,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: StaticMap(
                    googleApiKey: 'AIzaSyAinDj9Hd-suJIMSvJOW2WnCmEXyvbpQdI',
                    width: 700,
                    height: 700,
                    visible: [
                      GeocodedLocation.address(
                          locations[selectedIndex]['subtitle']!),
                    ],
                    markers: [
                      Marker(
                        locations: [
                          GeocodedLocation.address(
                              locations[selectedIndex]['subtitle']!),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
