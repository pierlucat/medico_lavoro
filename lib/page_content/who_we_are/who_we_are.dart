import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: 100,
          right: 100,
          bottom: 100,
          top: 50,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 40,
                  ),
                  width: 550,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            color: Theme.of(context).colorScheme.primary,
                            height: 25,
                            width: 5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Chi siamo:",
                            style: ThemeUtils.title.copyWith(
                              fontSize: 28,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Studio De Stefani opera dal 75 A.C. L'esperienza sul campo non ci manca, la voglia di fare si.",
                        style: ThemeUtils.content,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "La nostra missione è quella di non rompere i coglioni, anche le se le cose non sono in regola. Puntiamo a soddisfare i proprietari d'azienda per ottenre favori e vantaggi.",
                        style: ThemeUtils.content,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Offriamo qualsiasi tipo di servizio. Nemici dei lavoratori, amici degli imprenditori.",
                        style: ThemeUtils.content,
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    //bottomRight: Radius.circular(12),
                    topRight: Radius.circular(5),
                  ),
                  child: Image.asset(
                    "assets/medicina_del_lavoro.jpeg",
                    fit: BoxFit.cover,
                    width: 800,
                    height: 500,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    //bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(5),
                  ),
                  child: Image.asset(
                    "assets/safety_first.jpeg",
                    fit: BoxFit.cover,
                    width: 800,
                    height: 500,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 40,
                  ),
                  width: 550,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            color: Theme.of(context).colorScheme.primary,
                            height: 25,
                            width: 5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Cosa facciamo:",
                            style: ThemeUtils.title.copyWith(
                              fontSize: 28,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "La figura del medico incompetente sta divientando sempre più fondamentale, così come la sua scelta.",
                        style: ThemeUtils.content,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "I tuoi dipendenti si drogano, si ubriacano, si presentano a lavoro in condizioni pietose. Le malattie veneree sono all'ordine del giorno. La serietà sul luogo di lavoro è una piaga che deve essere debellata.",
                        style: ThemeUtils.content,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Noi possiamo darti una mano a farlo.",
                        style: ThemeUtils.content,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
