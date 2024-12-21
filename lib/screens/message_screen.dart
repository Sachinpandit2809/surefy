import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/flexible_round_buttons.dart';
import 'package:surefy/common_widgets/message/message_tile.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/my_dart/contact_data.dart';
import 'package:surefy/resource/styles/k_text_style.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List<Map<String, dynamic>> messageData = ContactData().contactData();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showAlertDialog();
    });
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Image(
                    image: AssetImage(R.ASSETS_IMAGES_ICON_CLOSE_CIRCLE_PNG)),
              )),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage(R.ASSETS_IMAGES_MESSAGE_PNG)),
              Text(
                'Allow Permission',
                style: KTextStyle.k_16,
              ),
              Text('Allow DailerX to send and'),
              Text('view SMS messages'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: FlexibleRoundButtons(
                  btnColor: Color(0xFF5FBFF9),
                  onPress: () {
                    Navigator.of(context).pop();
                  },
                  title: "Allow"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, index) {
          return MessageTile(
            message: messageData[index]["message"],
            name: messageData[index]["name"],
            number: messageData[index]["mobile"],
            tag: messageData[index]["tag"],
            time: messageData[index]["message_time"],
          );
        });
  }
}
