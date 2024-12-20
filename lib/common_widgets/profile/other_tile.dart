import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/call_log_tile.dart';
import 'package:surefy/my_dart/contact_data.dart';
import 'package:surefy/resource/ext/num_ext.dart';
import 'package:surefy/resource/styles/k_text_style.dart';

class OtherTile extends StatefulWidget {
  String title;
  Color color;
  IconData icon;
  OtherTile({
    super.key,
    required this.title,
    this.color = Colors.black,
    required this.icon,
  });

  @override
  State<OtherTile> createState() => _OtherTileState();
}

class _OtherTileState extends State<OtherTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: widget.color,
          ),
          20.widthBox,
          Text(
            widget.title,
            style: KTextStyle.k_18
                .copyWith(fontWeight: FontWeight.w400, color: widget.color),
          )
        ],
      ),
    );
  }
}
