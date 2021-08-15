import 'package:flutter/material.dart';
class PageColorsWidget extends StatelessWidget {
  final Color color;
  PageColorsWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
