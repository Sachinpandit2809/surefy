import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/call_log_tile.dart';
import 'package:surefy/common_widgets/text_icon_button.dart';
import 'package:surefy/my_dart/call_data.dart';
import 'package:surefy/resource/ext/num_ext.dart';
import 'package:surefy/screens/access_log_screen.dart';

class ConnectsScreen extends StatefulWidget {
  const ConnectsScreen({super.key});

  @override
  State<ConnectsScreen> createState() => _ConnectsScreenState();
}

class _ConnectsScreenState extends State<ConnectsScreen> {
  List<Map<String, dynamic>> callData = Data().callData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextIconButton(
                  title: "Call",
                  onPress: () {},
                ),
                TextIconButton(
                  title: "Contacts",
                  onPress: () {},
                ),
                TextIconButton(
                  title: "Messages",
                  onPress: () {},
                ),
                TextIconButton(
                  title: "Favourites",
                  onPress: () {},
                )
              ],
            ),
          ),
          10.heightBox,
          Expanded(
            child: ListView.builder(
                itemCount: callData.length,
                itemBuilder: (context, index) {
                  return CallLogTile(
                    name: callData[index]["name"],
                    number: callData[index]["number"],
                    callTagType: callData[index]["callTagType"],
                    tag: callData[index]["tag"],
                    time: callData[index]["time"],
                  );
                }),
          )
        ],
      ),
    );
  }
}
