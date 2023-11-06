import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../gen/=/assets.gen.dart';
import 'wdivider.dart';

class WOption extends StatelessWidget {
  final String title;
  final int index;
  final bool isSelected;
  final bool removeDivider;
  final ValueChanged<int> onChange;

  WOption({
    Key? key,
    required this.title,
    required this.index,
    required this.isSelected,
    required this.onChange,
    this.removeDivider = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
      child: GestureDetector(
        onTap: () {
          onChange(index);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF2F3E4A),
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SvgPicture.asset(
                  isSelected ? Assets.icons.selectedIcon.path : Assets.icons.notSelectedIcon.path,
                ),
              ],
            ),
            SizedBox(height: 18,),
            if (!removeDivider) WDivider(color: const Color(0xFFDFE2E5), width: 279, thickness: 1),
          ],
        ),
      ),
    );
  }
}