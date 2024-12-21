import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/contacts/contact_tile.dart';
import 'package:surefy/my_dart/contact_data.dart';
import 'package:surefy/resource/styles/app_colors.dart';
import 'package:surefy/screens/contact_profile_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<Map<String, dynamic>> contactData = ContactData().contactData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: contactData.length,
                    itemBuilder: (context, index) {
                      return ContactTile(
                          onpress: () {
                            print("object");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ContactProfileScreen(
                                          personalContactData:
                                              contactData[index],
                                        )));
                          },
                          personalContactData: contactData[index],
                          name: contactData[index]["name"],
                          tag: contactData[index]["tag"]);
                    }))
          ],
        ),
        floatingActionButton: CircleAvatar(
          backgroundColor: AppColors.buttonColor,
          radius: 30,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ));
  }
}
