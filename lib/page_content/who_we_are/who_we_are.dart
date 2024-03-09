import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/who_we_are/person.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: Column(
        children: [
          Person(
            path: "assets/mds.jpeg",
            name: "Mario De Stefani",
            boldDescription: "Coglionazzo 1: ",
            description:
                "Da meno di un anno medico del lavoro. Estremamente incompetente. Appassionato di soldi punta a ciucciarvene più che può, protetto dal fatto che per legge avete bisogno di lui. Vedete di farvi inculare per bene che deve comprarsi il Porsche.",
          ),
          Person(
            reverse: true,
            path: "assets/pt.jpeg",
            name: "Pierluca Toniolo",
            boldDescription: "Coglionazzo 2: ",
            description:
                "Un poveraccio. Cerca di raccimolare qualche soldo extra facendo siti di merda tipo questobla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla, bla bla bla.",
          ),
        ],
      ),
    );
  }
}
