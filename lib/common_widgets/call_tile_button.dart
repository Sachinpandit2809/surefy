import 'package:flutter/material.dart';

import 'package:surefy/resource/styles/app_colors.dart';

// ignore: must_be_immutable
class CallTileButton extends StatefulWidget {
  Color btnColor;
  TextStyle style;
  String title;

  CallTileButton({
    this.style = const TextStyle(fontSize: 14, color: AppColors.whiteText),
    super.key,
    required this.title,
    this.btnColor = AppColors.buttonColor,
  });

  @override
  State<CallTileButton> createState() => _CallTileButtonState();
}

class _CallTileButtonState extends State<CallTileButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      decoration: BoxDecoration(
        border: Border.all(color: widget.btnColor),
        color: widget.btnColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
          child: Text(widget.title,
              style:const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ))),
    );
  }
}
