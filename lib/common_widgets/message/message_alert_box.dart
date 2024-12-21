import 'package:flutter/material.dart';

class MessageAlertBox extends StatefulWidget {
  const MessageAlertBox({super.key});

  @override
  State<MessageAlertBox> createState() => _MessageAlertBoxState();
}

class _MessageAlertBoxState extends State<MessageAlertBox> {
  @override
 

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Welcome!'),
      ),
    );
  }
}
