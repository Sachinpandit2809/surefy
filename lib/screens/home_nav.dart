import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/call_log_tile.dart';
import 'package:surefy/common_widgets/icon_container.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/resource/ext/num_ext.dart';
import 'package:surefy/screens/access_log_screen.dart';
import 'package:surefy/screens/connects_screen.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int selectedIndex = 0;
  List pages = [
    ConnectsScreen(),
    Text("part 2"),
    Text("part 3"),
    Text("part 4")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset(R.ASSETS_IMAGES_VECTOR_PNG),
        actions: [
          IconContainer(
              image: R.ASSETS_IMAGES_SEARCH_NORMAL_PNG, onPress: () {}),
          10.widthBox,
          IconContainer(image: R.ASSETS_IMAGES_NOTIFICATION_PNG, onPress: () {})
        ],
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.people_sharp), label: "Connects"),
            BottomNavigationBarItem(
                icon: Icon(Icons.dialpad_rounded), label: "Dialpad"),
            BottomNavigationBarItem(
                icon: Image.asset(R.ASSETS_IMAGES_BRIEFCASE_PNG), label: "Hub"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
