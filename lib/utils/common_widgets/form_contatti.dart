import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medico_lavoro/utils/breakpoint_utils.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/common_widgets/common_input_field.dart';
import 'package:medico_lavoro/utils/theme.dart';

class FormContatti extends StatefulWidget {
  const FormContatti({super.key});

  @override
  State<FormContatti> createState() => _FormContattiState();
}

class _FormContattiState extends State<FormContatti> {
  final _formKey = GlobalKey<FormState>();

  // Aggiungiamo una variabile per gestire quando mostrare gli errori in tempo reale
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  final _nomeController = TextEditingController();
  final _aziendaController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _messaggioController = TextEditingController();

  bool _isLoading = false;

  @override
  void dispose() {
    _nomeController.dispose();
    _aziendaController.dispose();
    _emailController.dispose();
    _telefonoController.dispose();
    _messaggioController.dispose();
    super.dispose();
  }

  Future<void> _inviaEmail() async {
    setState(() {
      _isLoading = true;
    });

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    try {
      final response = await http.post(
        url,
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': 'service_ogu0mn8',
          'template_id': 'template_gka3otc',
          'user_id': 'tjemDFzjQV7bgE3H9',
          'template_params': {
            'nome': _nomeController.text,
            'azienda': _aziendaController.text,
            'email': _emailController.text,
            'telefono': _telefonoController.text,
            'messaggio': _messaggioController.text,
          }
        }),
      );

      if (response.statusCode == 200) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Richiesta inviata con successo!')),
          );
        }

        // 1. Svuota fisicamente i controller
        _nomeController.clear();
        _aziendaController.clear();
        _emailController.clear();
        _telefonoController.clear();
        _messaggioController.clear();

        // 2. Resetta il form e disabilita la validazione automatica
        // per evitare che i campi appena svuotati mostrino "Campo obbligatorio"
        setState(() {
          _autovalidateMode = AutovalidateMode.disabled;
        });
        _formKey.currentState?.reset();
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text('Errore durante l\'invio della richiesta.')),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Errore di connessione: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              // 1. AGGIUNTO: Mantiene i campi allineati in alto
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CommonInputField(
                    label: 'Nome e Cognome',
                    controller: _nomeController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Campo obbligatorio';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: CommonInputField(
                    label: 'Azienda',
                    controller: _aziendaController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Campo obbligatorio';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              // 2. AGGIUNTO: Mantiene i campi allineati in alto
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CommonInputField(
                    label: 'Mail',
                    textInputType: TextInputType.emailAddress,
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Campo obbligatorio';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value.trim())) {
                        return 'Inserisci un\'email valida';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: CommonInputField(
                    label: 'Telefono',
                    textInputType: TextInputType.phone,
                    controller: _telefonoController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Campo obbligatorio';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            CommonInputField(
              label: 'Messaggio',
              textInputType: TextInputType.multiline,
              maxLines: 6,
              controller: _messaggioController,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Campo obbligatorio';
                }
                return null;
              },
            ),
            SizedBox(height: SizingUtils.spaceM),
            Row(
              children: [
                const Spacer(),
                _isLoading
                    ? const CircularProgressIndicator()
                    : CommonFilledButton(
                        text: "Invia richiesta",
                        textColor: Colors.white,
                        callBack: () async {
                          setState(() {
                            _autovalidateMode =
                                AutovalidateMode.onUserInteraction;
                          });

                          if (_formKey.currentState!.validate()) {
                            await _inviaEmail();
                          }
                        },
                      ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
