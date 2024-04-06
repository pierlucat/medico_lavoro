import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/common_widgets/common_input_field.dart';
import 'package:medico_lavoro/utils/theme.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 21,
          ),
          Text(
            "Compila il form, richiedi informazioni sui nostri servizi, e sarai presto ricontattato.",
            style: ThemeUtils.content,
          ),
          SizedBox(
            height: 21,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CommonInputField(
                      label: 'Nome e Cognome',
                    ),
                  ),
                  SizedBox(width: 10), // Spazio tra i due TextField
                  Expanded(
                    child: CommonInputField(
                      label: 'Azienda',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: CommonInputField(
                        label: 'Mail',
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: CommonInputField(
                        label: 'Telefono',
                        textInputType: TextInputType.phone,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CommonInputField(
                  label: 'Messaggio',
                  textInputType: TextInputType.multiline,
                  maxLines: 3,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(),
              ),
              CommonFilledButton(
                text: "Invia messaggio",
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(ColorUtils.accentColor),
                  ),
                ),
                callBack: () async {
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
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
