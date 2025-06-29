import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/common_widgets/common_input_field.dart';
import 'package:medico_lavoro/utils/theme.dart';

import '../../../utils/breakpoint_utils.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CommonInputField(
                        label: 'Nome e Cognome',
                      ),
                    ),
                    SizedBox(width: 15), // Spazio tra i due TextField
                    Expanded(
                      child: CommonInputField(
                        label: 'Azienda',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
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
                    SizedBox(width: 15),
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
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: CommonInputField(
                    label: 'Messaggio',
                    textInputType: TextInputType.multiline,
                    maxLines: 6,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: BreakpointUtils.getResponsiveValue(
                context,
                [
                  SizingUtils.spaceXS,
                  SizingUtils.spaceS,
                  SizingUtils.spaceM,
                  SizingUtils.spaceM,
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                CommonFilledButton(
                  text: "Invia richiesta",
                  buttonStyle: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                  ),
                  textStyle: TextStyle(
                    color: Color(
                      ColorUtils.backgroundGrey,
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
      ),
    );
  }
}
