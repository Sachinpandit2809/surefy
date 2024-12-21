import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/call_tile_button.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/resource/ext/num_ext.dart';
import 'package:surefy/resource/styles/app_colors.dart';

// ignore: must_be_immutable
class CallLogTile extends StatefulWidget {
  String name, number, callTagType, tag, time;

  CallLogTile({
    super.key,
    required this.name,
    required this.number,
    required this.callTagType,
    required this.tag,
    required this.time,
  });

  @override
  State<CallLogTile> createState() => _CallLogTileState();
}

class _CallLogTileState extends State<CallLogTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      // height: 100,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: widget.tag == "Personal"
                ? AppColors.buttonColor.withOpacity(0.3)
                : const Color(0xFF16BAC4).withOpacity(0.3),
            child: widget.tag == "Personal"
                ? const Icon(
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
              Row(
                children: [
                  widget.callTagType == "Missed"
                      ? Image.asset(R.ASSETS_IMAGES_ICON_MISSED_PNG)
                      : widget.callTagType == "Incoming"
                          ? widget.callTagType == "Outgoing"
                              ? const Icon(
                                  Icons.call_made_outlined,
                                  color: Color(0xFF00BF20),
                                )
                              : const Icon(
                                  Icons.call_received_rounded,
                                  color: Color(0xff5FBFF9),
                                )
                          : Image.asset(R.ASSETS_IMAGES_SHIELD_CROSS_PNG),
                  10.widthBox,
                  Text(
                    widget.callTagType,
                    style: const TextStyle(color: Color(0xFF808080)),
                  ),
                  10.widthBox,
                  Text(widget.time,
                      style: const TextStyle(color: Color(0xFF808080))),
                ],
              )
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.info_outline,
            size: 30,
            color: Color(0xFF808080),
            weight: 2,
          ),
          15.widthBox
        ],
      ),
    );
  }
}
