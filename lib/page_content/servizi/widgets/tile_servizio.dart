import 'package:flutter/material.dart';

import '../../../utils/common_widgets/common_filled_button.dart';
import '../../../utils/theme.dart';

class TileServizio extends StatefulWidget {
  final String title;
  final String image;
  final double height;
  final double width;
  final Widget? button;
  final double fontSize;
  const TileServizio({
    super.key,
    required this.title,
    required this.image,
    this.height = 230,
    this.width = 230,
    this.button,
    this.fontSize = 24,
  });

  @override
  _TileServizioState createState() => _TileServizioState();
}

class _TileServizioState extends State<TileServizio> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        height: widget.height,
        width: widget.width,
        duration: const Duration(milliseconds: 200),
        transform:
            _isHovered ? (Matrix4.identity()..scale(1.02)) : Matrix4.identity(),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizingUtils.radiusCircle)),
          elevation: _isHovered ? 10 : 5,
          shadowColor: _isHovered ? const Color(0xFF8EB6DD) : Colors.black45,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  widget.image,
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: widget.fontSize),
                  ),
                ),
                if (widget.button != null)
                  Expanded(
                    child: SizedBox(),
                  ),
                if (widget.button != null) widget.button!,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
