import 'package:flutter/material.dart';

import 'woption.dart';

class WOptionsList extends StatelessWidget {
  const WOptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        WOption(
          title: 'I don\'t want to share',
          onChange: (index) {},
          isSelected: true,
          index: 0,
        ),
        WOption(
          title: 'Can\'t contact the driver',
          onChange: (index) {},
          isSelected: false,
          index: 1,
        ),
        WOption(
          title: 'Driver is late',
          onChange: (index) {},
          isSelected: false,
          index: 2,
        ),
        WOption(
          title: 'The price is not reasonable',
          onChange: (index) {},
          isSelected: false,
          index: 3,
        ),
        WOption(
          title: 'Other',
          onChange: (index) {},
          isSelected: false,
          index: 4,
          removeDivider: true,
        ),
      ],
    );
  }
}
