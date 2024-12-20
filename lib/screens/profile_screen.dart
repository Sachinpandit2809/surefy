import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/profile/number_tile.dart';
import 'package:surefy/common_widgets/profile/other_tile.dart';
import 'package:surefy/common_widgets/profile/profile_icon_text_widget.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/resource/styles/app_colors.dart';
import 'package:surefy/resource/styles/k_text_style.dart';

class ProfileScreen extends StatefulWidget {
  Map<String, dynamic> personalContactData;
  ProfileScreen({super.key, required this.personalContactData});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              Container(
                height: 20,
                width: 20,
                color: Colors.blue,
              ),
              const SizedBox(height: 5),
              Text("${widget.personalContactData["name"]}",
                  style: KTextStyle.k_16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileIconTextWidget(
                      title: "Call", icon: Icons.call, onPress: () {}),
                  ProfileIconTextWidget(
                      title: "Message",
                      icon: Icons.message_sharp,
                      onPress: () {}),
                  ProfileIconTextWidget(
                      title: "Notes",
                      icon: Icons.event_note_outlined,
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
                          title: "Add To Contact", icon: Icons.heart_broken),
                      OtherTile(
                          title: "Delete Contact",
                          color: Colors.red,
                          icon: Icons.heart_broken),
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
                                    ? const Icon(Icons.call_missed_rounded,
                                        color: Colors.red)
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
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: Text(title, style: KTextStyle.k_16),
    );
  }
}
