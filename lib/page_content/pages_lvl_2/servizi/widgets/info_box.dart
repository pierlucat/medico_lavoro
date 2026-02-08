import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final Widget text;
  final IconData? icon;
  final Color accentColor;

  const InfoBox({
    super.key,
    required this.text,
    this.icon,
    this.accentColor = const Color(0xFF0084C7), // Tuo colore primary
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade100, // Sfondo chiarissimo
        border: Border(
          left: BorderSide(
              color: accentColor, width: 4), // Bordo spesso a sinistra
        ),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null) ...[
            Icon(icon, color: accentColor, size: 24),
            const SizedBox(width: 15),
          ],
          Expanded(
            child: text,
          ),
        ],
      ),
    );
  }
}
