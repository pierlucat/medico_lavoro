import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';

class AccordionEntry extends StatefulWidget {
  final String title;
  final Widget text;
  final bool? isExpanded;
  final VoidCallback? onExpansionChanged;

  const AccordionEntry({
    required this.title,
    required this.text,
    this.isExpanded,
    this.onExpansionChanged,
    super.key,
  });

  @override
  State<AccordionEntry> createState() => _AccordionEntryState();
}

class _AccordionEntryState extends State<AccordionEntry>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightFactor;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    _heightFactor = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );

    if (widget.isExpanded!) {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(AccordionEntry oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isExpanded != oldWidget.isExpanded) {
      if (widget.isExpanded!) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: 800,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: widget.onExpansionChanged,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 32, color: Color(ColorUtils.accentColor)),
                ),
                Stack(
                  children: [
                    Icon(
                      Icons.remove,
                      size: 32,
                      color: Color(ColorUtils.accentColor),
                    ),
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 200),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return RotationTransition(
                            turns: child.key == ValueKey('vertical')
                                ? Tween<double>(begin: 0.0, end: 0.25)
                                    .animate(animation)
                                : Tween<double>(begin: 0.25, end: 0.0)
                                    .animate(animation),
                            child: child);
                      },
                      child: !widget.isExpanded!
                          ? Icon(
                              Icons.remove,
                              key: ValueKey('vertical'),
                              size: 32,
                              color: Color(ColorUtils.accentColor),
                            )
                          : Icon(
                              Icons.remove,
                              key: ValueKey('horizontal'),
                              size: 32,
                              color: Color(ColorUtils.accentColor),
                            ),
                    )
                  ],
                )
              ],
            ),
          ),
          ClipRect(
            child: AnimatedSize(
              duration: Duration(milliseconds: 200),
              curve: Curves.linear,
              child: SizeTransition(
                sizeFactor: _heightFactor,
                axisAlignment: -1.0,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  width: 650,
                  child: AccordionEntryContent(
                    text: widget.text,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AccordionEntryContent extends StatelessWidget {
  final Widget text;
  const AccordionEntryContent({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return text;
  }
}
