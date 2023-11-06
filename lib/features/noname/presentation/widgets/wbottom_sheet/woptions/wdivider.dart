import 'package:flutter/material.dart';

class WDivider extends StatelessWidget {
  final double width;
  final double thickness;
  final Color color;
  const WDivider({super.key, required this.width, required this.thickness, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: thickness,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: color,
          ),
        ),
      ),
    );
  }
}
