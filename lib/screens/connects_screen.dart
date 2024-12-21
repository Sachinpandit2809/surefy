import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/call_log_tile.dart';

import 'package:surefy/my_dart/call_data.dart';

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
      backgroundColor: Colors.white,
      body: Column(
        children: [
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
