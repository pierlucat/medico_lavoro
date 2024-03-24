import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/contact_us/contact_us_form.dart';
import 'package:medico_lavoro/page_content/contact_us/contact_us_info.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth > 600) {
          return _buildWideContainers();
        } else {
          return _buildNormalContainer();
        }
      }),
    );
  }

  Widget _buildNormalContainer() {
    return Container(
      child: Column(children: [ContactUsForm(), ContactUsInfo()]),
    );
  }

  Widget _buildWideContainers() {
    return Container(
      child: Row(children: [
        Flexible(flex: 3, child: ContactUsForm()),
        Flexible(flex: 2, child: ContactUsInfo())
      ]),
    );
  }
}
