import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_content_subtitle.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_content_title.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';
import 'package:medico_lavoro/utils/theme.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              'assets/mario_al_lavoro.png',
              width: MediaQuery.of(context).size.width,
              height: 550,
              fit: BoxFit.cover,
            ),
            Positioned(
              right: 0,
              height: 550,
              width: MediaQuery.of(context).size.width / 2.5,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeContentTitle(),
                      SizedBox(
                        height: 20,
                      ),
                      HomeContentSubtitle(),
                      SizedBox(
                        height: 40,
                      ),
                      CommonFilledButton(
                        text: 'Contattaci',
                        callBack: () => Scrollable.ensureVisible(
                            duration: const Duration(
                              milliseconds: 500,
                            ),
                            (key as GlobalKey).currentContext!),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // SizedBox(
        //   height: 40,
        // ),
        Container(
          color: Color(ColorUtils.accentColor),
          height: 400,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.timer,
                size: 56,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Assistenza in 48 ore',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                width: 50,
                height: 3,
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Prevenzione, Salute, Sicurezza.',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              CommonFilledButton(
                text: 'I nostri servizi',
                buttonStyle: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(
                      Color(ColorUtils.lightAccentColor)),
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  foregroundColor: MaterialStatePropertyAll(
                    Color(ColorUtils.accentColor),
                  ),
                ),
                callBack: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}
