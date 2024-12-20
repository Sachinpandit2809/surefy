import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/message/message_tile.dart';
import 'package:surefy/my_dart/contact_data.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  List<Map<String, dynamic>> messageData = ContactData().contactData();

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
