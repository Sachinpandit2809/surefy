import 'package:flutter/material.dart';
import 'package:surefy/resource/styles/app_colors.dart';
import 'package:surefy/resource/styles/k_text_style.dart';

class TextIconButton extends StatefulWidget {
  String title;
  VoidCallback onPress;
  TextIconButton({super.key, required this.title, required this.onPress});

  @override
  State<TextIconButton> createState() => _TextIconButtonState();
}

class _TextIconButtonState extends State<TextIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 15),
      // decoration: BoxDecoration(
      //     color: AppColors.buttonColor,
      //     borderRadius: BorderRadius.circular(18)),
      // padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: KTextStyle.k_14.copyWith(color: AppColors.grey),
          ),
          Icon(
            Icons.keyboard_arrow_down_sharp,
            size: 20,
            color: AppColors.grey,
          )
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> data = [
  {
    "name": "Sachin",
    "number": "9955334422",
    "callTagIcon": "Missed",
    "tag": "Bussiness",
    "time": "12:00"
  },
  {
    "name": "Sahil",
    "number": "9955334422",
    "callTagIcon": "Outgoing",
    "tag": "Personal",
    "time": "9:00"
  },
  {
    "name": "",
    "number": "9977334422",
    "callTagIcon": "Incoming",
    "tag": "Personal",
    "time": "9:00"
  },
  {
    "name": "",
    "number": "9977334422",
    "callTagIcon": "Incoming",
    "tag": "Spam",
    "time": "9:00"
  }
];
