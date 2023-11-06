import 'package:flutter/material.dart';

class WDefinitionText extends StatelessWidget {
  final String title;
  const WDefinitionText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xFF171215),
          fontSize: 18,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w500,
          letterSpacing: 0.35,
        ),
      ),
    );
  }
}
