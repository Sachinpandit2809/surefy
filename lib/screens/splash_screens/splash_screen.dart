import 'dart:async';

import 'package:flutter/material.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/resource/styles/app_colors.dart';
import 'package:surefy/screens/splash_screens/access_log_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => AccessLogScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Container(
                // height: 400,
                // width: 400,
                // decoration: BoxDecoration(
                //     gradient: LinearGradient(colors: [
                //   Color(0x105864F8),
                //   Color(
                //     0x1016BAC4,
                //   ),
                // ])),
                child: Image.asset(
                  R.ASSETS_IMAGES_SPLASH_PHOTO_PNG,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              left: 0,
              right: 0,
              child: Image.asset(
                // color: Colors.white,
                R.ASSETS_IMAGES_SPLASH_PHONE_PNG,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
