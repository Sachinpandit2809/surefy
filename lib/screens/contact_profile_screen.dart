import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/contacts/profile/number_tile.dart';
import 'package:surefy/common_widgets/contacts/profile/other_tile.dart';
import 'package:surefy/common_widgets/contacts/profile/profile_icon_text_widget.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/resource/styles/app_colors.dart';
import 'package:surefy/resource/styles/k_text_style.dart';

// ignore: must_be_immutable
class ContactProfileScreen extends StatefulWidget {
  Map<String, dynamic> personalContactData;
  ContactProfileScreen({super.key, required this.personalContactData});

  @override
  State<ContactProfileScreen> createState() => _ContactProfileScreenState();
}

class _ContactProfileScreenState extends State<ContactProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: mediaHeight * .20,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(R.ASSETS_IMAGES_RECTANGLE_39872_PNG),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      SizedBox(height: mediaHeight * .05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(width: 10),
                          Text(
                            "${""}",
                            style: KTextStyle.k_16
                                .copyWith(color: AppColors.whiteText),
                          ),
                          const Icon(Icons.more_vert_outlined,
                              color: AppColors.whiteText),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: mediaHeight * .1),
              Image.asset(R.ASSETS_IMAGES_ICON_SHIELD_PNG),
              const SizedBox(height: 5),
              Text("${widget.personalContactData["name"]}",
                  style: KTextStyle.k_16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileIconTextWidget(
                      title: "Call",
                      icon: Icon(
                        Icons.call,
                        color: Color(0xFF808080),
                      ),
                      onPress: () {}),
                  ProfileIconTextWidget(
                      title: "Message",
                      icon: Image.asset(R.ASSETS_IMAGES_ICON_MESSAGE_ICON_PNG),
                      onPress: () {}),
                  ProfileIconTextWidget(
                      title: "Notes",
                      icon: Image.asset(R.ASSETS_IMAGES_ICON_NOTES_PNG),
                      onPress: () {}),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionTitle("Contact Info"),
                      NumberTile(
                          number: "${widget.personalContactData["mobile"]}",
                          title: "Mobile"),
                      NumberTile(
                          number: "${widget.personalContactData["work"]}",
                          title: "Work"),
                      _buildSectionTitle("Other"),
                      OtherTile(
                          title: "Add To Contact",
                          icon: Image.asset(R.ASSETS_IMAGES_ICON_HEART_PNG)),
                      OtherTile(
                          title: "Delete Contact",
                          color: Colors.red,
                          icon: Image.asset(R.ASSETS_IMAGES_ICON_TRASH_PNG)),
                      _buildSectionTitle("Call History"),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              widget.personalContactData["call_log"].length,
                          itemBuilder: (context, index) => ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            title: Text(
                                "${widget.personalContactData["call_log"][index]["call_type"]}"),
                            subtitle: Row(
                              children: [
                                widget.personalContactData["call_log"][index]
                                            ["call_type"] ==
                                        "missed"
                                    ? Image.asset(
                                        R.ASSETS_IMAGES_ICON_MISSED_PNG)
                                    : widget.personalContactData["call_log"]
                                                [index]["call_type"] ==
                                            "incoming"
                                        ? const Icon(
                                            Icons.call_made_outlined,
                                            color: Color(0xFF00BF20),
                                          )
                                        : const Icon(Icons.call_received,
                                            color: Color(0xff5FBFF9)),
                                const SizedBox(width: 10),
                                Text(
                                    "${widget.personalContactData["call_log"][index]["day"]}",
                                    style: const TextStyle(
                                        color: Color(0xFF808080))),
                                const SizedBox(width: 10),
                                Text(
                                    "${widget.personalContactData["call_log"][index]["time"]}",
                                    style: const TextStyle(
                                        color: Color(0xFF808080))),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: Image.asset(R.ASSETS_IMAGES_CONTACT_PROFILE_PNG),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 10),
      child: Text(title, style: KTextStyle.k_16),
    );
  }
}
