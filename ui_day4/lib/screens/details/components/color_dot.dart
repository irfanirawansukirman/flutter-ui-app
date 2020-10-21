import 'package:flutter/material.dart';
import 'package:ui_day4/constants.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({Key key, this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 4.0,
        right: kDefaultPadding / 4,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24.0,
      width: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}