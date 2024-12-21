import 'package:flutter/material.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/resource/styles/k_text_style.dart';

// ignore: must_be_immutable
class NumberTile extends StatefulWidget {
  String number, title;
  NumberTile({
    super.key,
    required this.number,
    required this.title,
  });

  @override
  State<NumberTile> createState() => _NumberTileState();
}

class _NumberTileState extends State<NumberTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: 20),

      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "+91 ${widget.number}",
                style: KTextStyle.k_16,
              ),
              Text("${widget.title}",
                  style: KTextStyle.k_14.copyWith(color: Color(0xFF808080)))
            ],
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                size: 25,
                color: Color(0xFF808080),
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(R.ASSETS_IMAGES_ICON_MESSAGE_ICON_PNG))
        ],
      ),
    );
  }
}
