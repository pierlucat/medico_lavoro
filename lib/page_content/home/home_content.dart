import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_content_subtitle.dart';
import 'package:medico_lavoro/page_content/home/widgets/home_content_title.dart';
import 'package:medico_lavoro/utils/common_widgets/common_filled_button.dart';

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
                      CommonFilledButton(text: 'Fatti inculare')
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
          color: Theme.of(context).primaryColor,
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
                'Assistenza in 48 settiane',
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
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'La nostra unica arte, è quella del ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'cazzeggio',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ', 24 ore su 24, 7 giorni su 7.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'In tre parole: ',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Degrado, Alcolismo, Spaccio.',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
