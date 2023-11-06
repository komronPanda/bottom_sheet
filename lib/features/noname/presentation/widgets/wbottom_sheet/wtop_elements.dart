import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../gen/=/assets.gen.dart';

class WTopElements extends StatelessWidget {
  const WTopElements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset(
              Assets.icons.backIosIcon.path,
            ),
          ),
          Text(
            'Cancellation Reason',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF171215),
              fontSize: 18,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w700,
            ),
          ),
          ///-----------
          SvgPicture.asset(
            Assets.icons.backIosIcon.path,
            color: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
