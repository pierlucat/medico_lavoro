import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class ActivityIcon extends StatelessWidget {
  final String path;
  final String label;
  const ActivityIcon({super.key, required this.path, this.label = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 125,
          width: 125,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              path,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 3,
          width: 25,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(
          width: 125,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: ThemeUtils.title,
          ),
        ),
      ],
    );
  }
}
