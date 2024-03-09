import 'package:flutter/material.dart';

class ContactUsInfo extends StatelessWidget {
  const ContactUsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(children: [
        Text("Orario di apertura"),
        SizedBox(
          height: 20,
        ),
        Text("Quando cazzo vogliamo: 8:30 - 18"),
        Text("Al Bar a bere Negroni: 18:00 - 03:00"),
        SizedBox(
          height: 20,
        ),
        Divider(
          color: Colors.blue,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Via Roma, 69"),
        Text("Vicenza (VI) 35009"),
        SizedBox(
          height: 20,
        ),
        Text("3303939339"),
        Text("445314335"),
        SizedBox(
          height: 20,
        ),
        Text("info@molestori-seriali.com"),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
