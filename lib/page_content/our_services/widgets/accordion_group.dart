import 'package:flutter/material.dart';
import 'package:medico_lavoro/page_content/our_services/widgets/accordion_entry.dart';

class AccordionGroup extends StatefulWidget {
  final List<AccordionEntry> entries;
  AccordionGroup({required this.entries, super.key});

  @override
  _AccordionGroupState createState() => _AccordionGroupState();
}

class _AccordionGroupState extends State<AccordionGroup> {
  int? _expandedIndex = 0;

  void _handleExpansion(int index) {
    setState(() {
      _expandedIndex = _expandedIndex == index ? null : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < widget.entries.length; i++)
          AccordionEntry(
            title: widget.entries[i].title,
            text: widget.entries[i].text,
            isExpanded: _expandedIndex == i,
            onExpansionChanged: () => _handleExpansion(i),
          ),
      ],
    );
  }
}
