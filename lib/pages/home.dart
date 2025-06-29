import 'package:flutter/material.dart';

import '../footer/footer.dart';
import '../page_content/contact_us/contact_us.dart';
import '../page_content/home/home_content.dart';
import '../page_content/our_place/our_place.dart';
import '../page_content/our_services/our_services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeContent(),
          OurServices(),
          OurPlace(),
          ContactUs(),
          Footer(),
        ],
      ),
    );
  }
}
