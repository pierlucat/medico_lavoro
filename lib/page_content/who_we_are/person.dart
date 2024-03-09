import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String path;
  final String name;
  final String boldDescription;
  final String description;
  final bool reverse;

  const Person(
      {super.key,
      required this.path,
      required this.name,
      required this.boldDescription,
      required this.description,
      this.reverse = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (reverse)
            Positioned(
              right: 200,
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        color: Colors.grey.shade400,
                        blurRadius: 20,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(27),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 50.0,
                    right: 75,
                    top: 25,
                    bottom: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dott. $name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: boldDescription,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: description,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (!reverse)
            Positioned(
              left: 200,
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        color: Colors.grey.shade400,
                        blurRadius: 20,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(27),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 75.0,
                    right: 50,
                    top: 25,
                    bottom: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dott. $name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: boldDescription,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: description,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (reverse)
            Positioned(
              right: 0,
              child: CircleAvatar(
                radius: 125,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(125),
                  child: Image.asset(
                    path,
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          if (!reverse)
            Positioned(
              left: 0,
              child: CircleAvatar(
                radius: 125,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(125),
                  child: Image.asset(
                    path,
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
