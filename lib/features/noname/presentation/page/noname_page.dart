import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widgets/wbottom_sheet/wbase_bottom_sheet.dart';

@RoutePage()
class NoNamePage extends StatelessWidget {
  const NoNamePage({super.key});

  void openDeleteModelSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (_) => WBaseBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            openDeleteModelSheet(context);
          },
          child: Text(
            "Click me",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
