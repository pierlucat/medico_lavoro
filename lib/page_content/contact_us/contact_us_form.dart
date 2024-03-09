import 'package:flutter/material.dart';

class ContactUsForm extends StatefulWidget {
  const ContactUsForm({super.key});

  @override
  ContactUsFormState createState() {
    return ContactUsFormState();
  }
}

class ContactUsFormState extends State<ContactUsForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
        width: double.infinity,
        color: Colors.grey.shade300,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 21,
            ),
            Text(
              "Dicci chi cazzo sei, e appena ci passa la botta di bamba ti ricontatteremo",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 21,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 600),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Nome e Cognome/Attività',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Spazio tra i due TextField
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Numero di cellulare',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Mail',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Note',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 3, // Più spazio per le note
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26.0),
              child: ElevatedButton(
                onPressed: () async {
                  // Logica di invio del form
                  if (_formKey.currentState!.validate()) {
                    //initialize EmailSender class
                    // EmailSender emailSender = EmailSender();
                    // //initialize send method to response variable
                    // var response = await emailSender.send("afridayan01@gmail.com");
                    // if (response["message"] == "emailSendSuccess") {
                    //   print(response);
                    // } else {
                    //   print("something Failed");
                    //   //for understanding the error
                    //   print(response);
                    // }
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text('Invia'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
