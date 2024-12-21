import 'package:flutter/material.dart';

import 'package:surefy/resource/styles/app_colors.dart';

class FlexibleRoundButtons extends StatefulWidget {
  double height, width;
  Color btnColor;
  TextStyle style;
  String title;
  VoidCallback onPress;
  FlexibleRoundButtons({
    required this.onPress,
    this.style = const TextStyle(fontSize: 14, color: AppColors.whiteText),
    super.key,
    required this.title,
    this.height = 44,
    this.width = 197,
    this.btnColor = AppColors.buttonColor,
  });

  @override
  State<FlexibleRoundButtons> createState() => _FlexibleRoundButtonsState();
}

class _FlexibleRoundButtonsState extends State<FlexibleRoundButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.btnColor,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Center(child: Text(widget.title, style: widget.style)),
      ),
    );
  }
}
