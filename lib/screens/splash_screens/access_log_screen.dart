import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/flexible_round_buttons.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/resource/ext/num_ext.dart';
import 'package:surefy/resource/styles/k_text_style.dart';
import 'package:surefy/screens/support_screens/home_nav.dart';

class AccessLogScreen extends StatefulWidget {
  const AccessLogScreen({super.key});

  @override
  State<AccessLogScreen> createState() => _AccessLogScreenState();
}

class _AccessLogScreenState extends State<AccessLogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            flex: 7,
            child: Container(
              // color: Colors.red,
              child: Stack(
                children: [
                  Positioned(
                      bottom: -20,
                      left: 0,
                      right: 0,
                      child: Image(
                          image: AssetImage(R.ASSETS_IMAGES_FLYING_PHONE_PNG))),
                  Positioned(
                      top: 195,
                      right: 85,
                      child: Image(
                          height: 83,
                          width: 83,
                          image:
                              AssetImage(R.ASSETS_IMAGES_FRAME_1000006090_PNG)))
                ],
              ),
            )),
        Expanded(
            flex: 5,
            child: Container(
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  40.heightBox,
                  Text(
                    "Access Your Call Logs",
                    style:
                        KTextStyle.k_24.copyWith(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "We need access to your contacts and call logs to ",
                    style: KTextStyle.k_14.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    " help you connect and manage your",
                    style: KTextStyle.k_14.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "communication seamlessly.",
                    style: KTextStyle.k_14.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  75.heightBox,
                  FlexibleRoundButtons(
                    title: "Allow Access",
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeNav(),
                          ));
                    },
                  )
                ],
              ),
            )),
      ],
    ));
  }
}
