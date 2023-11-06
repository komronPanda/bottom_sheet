import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../gen/=/assets.gen.dart';
import 'wdefinition_text.dart';
import 'woptions/woptions_list.dart';
import 'wsubmit_button.dart';
import 'wtop_elements.dart';

class WBaseBottomSheet extends StatelessWidget {
  const WBaseBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 715,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: SvgPicture.asset(
              Assets.icons.topElementIcon.path,
            ),
          ),

          ///Cancellation Reason-------------------
          WTopElements(),

          ///Definition----------------------
          WDefinitionText(
            title: "Please select the reason for cancellation:".toUpperCase(),
          ),

          ///Options(reasons)----------------------
          WOptionsList(),

          Spacer(),

          ///SubmitButton---------------------------
          WSubmitButton(onPressed: () {}),
        ],
      ),
    );
  }
}
