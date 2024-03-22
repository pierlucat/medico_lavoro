import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/associates/person.dart';

import '../../utils/theme.dart';

class Associates extends StatelessWidget {
  const Associates({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 100,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(60.0),
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
                    "Associati:",
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Person(
                    height: 600,
                    direction: Direction.topToBottom,
                    path: "assets/mario_fake.jpeg",
                    name: "Liutprando Toscanetti",
                    boldDescription: "Coglionazzo 1: ",
                    description:
                        "Da meno di un anno medico del lavoro. Estremamente incompetente. Appassionato di soldi punta a ciucciarvene più che può, protetto dal fatto che per legge avete bisogno di lui. Vedete di farvi inculare per bene che deve comprarsi il Porsche.",
                  ),
                  Person(
                    height: 600,
                    direction: Direction.topToBottom,
                    path: "assets/pier_fake.png",
                    name: "Gianni Toscanetti",
                    boldDescription: "Coglionazzo 2: ",
                    description:
                        "Un poveraccio. Cerca di raccimolare qualche soldo extra facendo siti di merda tipo questobla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla.",
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Person(
                    height: 320,
                    direction: Direction.topToBottom,
                    path: null,
                    name: "Liutprando Toscanetti",
                    boldDescription: "Coglionazzo 1: ",
                    description:
                        "Da meno di un anno medico del lavoro. Estremamente incompetente. Appassionato di soldi punta a ciucciarvene più che può, protetto dal fatto che per legge avete bisogno di lui. Vedete di farvi inculare per bene che deve comprarsi il Porsche.",
                  ),
                  Person(
                    height: 320,
                    direction: Direction.topToBottom,
                    path: null,
                    name: "Gianni Toscanetti",
                    boldDescription: "Coglionazzo 2: ",
                    description:
                        "Un poveraccio. Cerca di raccimolare qualche soldo extra facendo siti di merda tipo questobla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
