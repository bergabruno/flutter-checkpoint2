import 'package:checkpoint2/utils/export.dart';
import 'package:flutter/material.dart';

class BrunaoPage extends StatelessWidget {
  final Widget body;

  BrunaoPage({
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 45.0,
          right: AppPaddings.borderPadding,
          top: AppPaddings.topPadding,
        ),
        child: SingleChildScrollView(child: body),
      ),
    );
  }
}
