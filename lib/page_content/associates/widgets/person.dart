import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_lavoro/utils/common_widgets/content_section.dart';
import 'package:medico_lavoro/utils/theme.dart';

enum Direction {
  leftToRight,
  rightToLeft,
  topToBottom,
}

class Person extends StatelessWidget {
  final String? path;
  final String name;
  final String boldDescription;
  final String description;
  final Direction direction;
  final double? height;

  const Person({
    super.key,
    required this.path,
    required this.name,
    required this.boldDescription,
    required this.description,
    this.direction = Direction.leftToRight,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (direction == Direction.topToBottom) {
      return PersonTopToBottom(
        path: path,
        name: name,
        boldDescription: boldDescription,
        description: description,
        height: height,
      );
    }
    return Container();

    // return SizedBox(
    //   height: 250,
    //   child: Stack(
    //     alignment: Alignment.center,
    //     children: [
    //       if (direction == Direction.rightToLeft)
    //         Positioned(
    //           right: 200,
    //           child: Container(
    //             decoration: BoxDecoration(
    //               //color: Colors.white,
    //               boxShadow: [
    //                 BoxShadow(
    //                     offset: Offset(0, 0),
    //                     color: Colors.grey.shade400,
    //                     blurRadius: 20,
    //                     spreadRadius: 0,
    //                     blurStyle: BlurStyle.outer)
    //               ],
    //               borderRadius: BorderRadius.circular(27),
    //               border: Border.all(
    //                 color: Colors.grey,
    //               ),
    //             ),
    //             width: MediaQuery.of(context).size.width / 2,
    //             child: Padding(
    //               padding: const EdgeInsets.only(
    //                 left: 50.0,
    //                 right: 75,
    //                 top: 25,
    //                 bottom: 25,
    //               ),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     'Dott. $name',
    //                     style: TextStyle(fontWeight: FontWeight.bold),
    //                   ),
    //                   RichText(
    //                     text: TextSpan(
    //                       children: [
    //                         TextSpan(
    //                           text: boldDescription,
    //                           style: TextStyle(fontWeight: FontWeight.bold),
    //                         ),
    //                         TextSpan(
    //                           text: description,
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       if (direction == Direction.leftToRight)
    //         Positioned(
    //           left: 200,
    //           child: Container(
    //             decoration: BoxDecoration(
    //               //color: Colors.white,
    //               boxShadow: [
    //                 BoxShadow(
    //                     offset: Offset(0, 0),
    //                     color: Colors.grey.shade400,
    //                     blurRadius: 20,
    //                     spreadRadius: 0,
    //                     blurStyle: BlurStyle.outer)
    //               ],
    //               borderRadius: BorderRadius.circular(27),
    //               border: Border.all(
    //                 color: Colors.grey,
    //               ),
    //             ),
    //             width: MediaQuery.of(context).size.width / 2,
    //             child: Padding(
    //               padding: const EdgeInsets.only(
    //                 left: 75.0,
    //                 right: 50,
    //                 top: 25,
    //                 bottom: 25,
    //               ),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     'Dott. $name',
    //                     style: TextStyle(fontWeight: FontWeight.bold),
    //                   ),
    //                   RichText(
    //                     text: TextSpan(
    //                       children: [
    //                         TextSpan(
    //                           text: boldDescription,
    //                           style: TextStyle(fontWeight: FontWeight.bold),
    //                         ),
    //                         TextSpan(
    //                           text: description,
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       if (direction == Direction.rightToLeft)
    //         Positioned(
    //           right: 0,
    //           child: CircleAvatar(
    //             radius: 125,
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(125),
    //               child: Image.asset(
    //                 path,
    //                 width: 300,
    //                 height: 300,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ),
    //         ),
    //       if (direction == Direction.leftToRight)
    //         Positioned(
    //           left: 0,
    //           child: CircleAvatar(
    //             radius: 125,
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(125),
    //               child: Image.asset(
    //                 path,
    //                 width: 300,
    //                 height: 300,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ),
    //         ),
    //     ],
    //   ),
    // );
  }
}

class PersonTopToBottom extends StatelessWidget {
  final String? path;
  final String name;
  final String boldDescription;
  final String description;
  final double? height;

  const PersonTopToBottom({
    super.key,
    required this.path,
    required this.name,
    required this.boldDescription,
    required this.description,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return AccentContentSection(
      widget: Column(
        children: [
          if (path != null)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 3,
                      color: Colors.black45,
                      offset: Offset(0.5, 0.5)),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  width: 450,
                  height: 250,
                  path!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          if (path != null)
            SizedBox(
              height: 25,
            ),
          SizedBox(
            width: 650,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      color: Color(ColorUtils.accentColor),
                      height: 25,
                      width: 5,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Dott. $name',
                      style: ThemeUtils.title.copyWith(
                        fontSize: 24,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Tel: ",
                      style: ThemeUtils.title.copyWith(fontSize: 20),
                    ),
                    Text(
                      "346-43567593",
                      style: ThemeUtils.content,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Mail: ",
                      style: ThemeUtils.title.copyWith(fontSize: 20),
                    ),
                    Text(
                      "incompetente@gmail.com",
                      style: ThemeUtils.content,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  description,
                  style: ThemeUtils.content,
                )
              ],
            ),
          ),
        ],
      ),
    );

    return Container(
      height: 700,
      width: 500,
      child: Stack(
        children: [
          Positioned(
            top: 25,
            child: SizedBox(
              width: 480,
              height: 650,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: -2,
                        blurRadius: 10,
                        color: Colors.black54,
                        offset: Offset(4, 4)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 165,
                      ),
                      Row(
                        children: [
                          Container(
                            color: Theme.of(context).colorScheme.primary,
                            height: 25,
                            width: 5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Dott. $name',
                            style: ThemeUtils.title.copyWith(
                              fontSize: 24,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Tel: ",
                            style: ThemeUtils.title.copyWith(fontSize: 20),
                          ),
                          Text(
                            "346-43567593",
                            style: ThemeUtils.content,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Mail: ",
                            style: ThemeUtils.title.copyWith(fontSize: 20),
                          ),
                          Text(
                            "incompetente@gmail.com",
                            style: ThemeUtils.content,
                          ),
                        ],
                      ),
                      Text(
                        description,
                        style: ThemeUtils.content,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 35,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 7,
                      color: Colors.black54,
                      offset: Offset(2, 2)),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  width: 400,
                  height: 250,
                  path!,
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
