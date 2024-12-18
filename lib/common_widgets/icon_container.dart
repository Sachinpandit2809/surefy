import 'package:flutter/material.dart';

class IconContainer extends StatefulWidget {
  String image;
  VoidCallback onPress;
   IconContainer({super.key, 
    required this.image, 
    required this. onPress
   });

  @override
  State<IconContainer> createState() => _IconContainerState();
}

class _IconContainerState extends State<IconContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Card(
        child: Container(
            height: 35,
            width: 35,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfff2f2f2),
            ),
            // margin: EdgeInsets.all(5),
            child: Image.asset(widget.image)),
      ),
    );
  }
}
