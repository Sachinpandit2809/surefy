import 'package:flutter/material.dart';
import 'package:surefy/resource/styles/k_text_style.dart';

// ignore: must_be_immutable
class ProfileIconTextWidget extends StatefulWidget {
  String title;
  Widget icon;
  VoidCallback onPress;
  @override
  ProfileIconTextWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPress});

  @override
  State<ProfileIconTextWidget> createState() => _ProfileIconTextWidgetState();
}

class _ProfileIconTextWidgetState extends State<ProfileIconTextWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        height: 66,
        width: 107,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.icon,
            Text(
              widget.title,
              style: KTextStyle.k_14.copyWith(color: Color(0xFF808080)),
            )
          ],
        ),
      ),
    );
  }
}
