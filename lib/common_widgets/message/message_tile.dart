import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/call_tile_button.dart';
import 'package:surefy/common_widgets/flexible_round_buttons.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/resource/ext/num_ext.dart';
import 'package:surefy/resource/styles/app_colors.dart';
import 'package:surefy/screens/access_log_screen.dart';

class MessageTile extends StatefulWidget {
  String name, number, message, tag, time;

  MessageTile({
    super.key,
    required this.name,
    required this.number,
    required this.message,
    required this.tag,
    required this.time,
  });

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      height: 80,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: widget.tag == "Personal"
                ? AppColors.buttonColor.withOpacity(0.3)
                : Color(0xFF16BAC4).withOpacity(0.3),
            child: widget.tag == "Personal"
                ? Icon(
                    Icons.person_rounded,
                    color: AppColors.buttonColor,
                  )
                : Image.asset(R.ASSETS_IMAGES_BRIEFCASE_PNG),
          ),
          20.widthBox,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  widget.name == ""
                      ? Text("+91 ${widget.number}")
                      : Text("${widget.name}"),
                  10.widthBox,
                  CallTileButton(
                    title: "${widget.tag}",
                    btnColor: widget.tag == "Bussiness"
                        ? Color(0xFF16BAC4)
                        : AppColors.buttonColor,
                  )
                ],
              ),
              5.heightBox,
              Text(widget.message, style: TextStyle(color: Color(0xFF808080))),
            ],
          ),
          Spacer(),
          Column(
            children: [
              CircleAvatar(
                radius: 15,
                child: Text("1"),
              ),
              10.heightBox,
              Text(widget.time, style: TextStyle(color: Color(0xFF808080))),
            ],
          ),
          15.widthBox
        ],
      ),
    );
  }
}
