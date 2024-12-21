import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/call_tile_button.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/resource/ext/num_ext.dart';
import 'package:surefy/resource/styles/app_colors.dart';

// ignore: must_be_immutable
class ContactTile extends StatefulWidget {
  String name, tag;
  Map<String, dynamic> personalContactData;
  VoidCallback onpress;

  ContactTile({
    super.key,
    required this.personalContactData,
    required this.name,
    required this.tag,
    required this.onpress,
  });

  @override
  State<ContactTile> createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpress,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        // height: 100,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 24,
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
            Text("${widget.name}"),
            20.widthBox,
            CallTileButton(
              title: widget.tag,
              btnColor: widget.tag == "Business"
                  ? Color(0xFF16BAC4)
                  : AppColors.buttonColor,
            ),
            15.widthBox
          ],
        ),
      ),
    );
  }
}
