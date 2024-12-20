import 'package:flutter/material.dart';
import 'package:surefy/screens/contact_screen.dart';
import 'package:surefy/screens/home_nav.dart';
import 'package:surefy/screens/profile_screen.dart';
import 'package:surefy/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const SplashScreen());
        home: const HomeNav());
  }
}
