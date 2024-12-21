import 'package:flutter/material.dart';
import 'package:surefy/common_widgets/icon_container.dart';
import 'package:surefy/common_widgets/message/message_alert_box.dart';
import 'package:surefy/const/resource.dart';
import 'package:surefy/resource/ext/num_ext.dart';
import 'package:surefy/resource/styles/app_colors.dart';
import 'package:surefy/screens/support_screens/tab_bar_screen.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int selectedIndex = 0;
  
  List pages = [
    TabBarScreen(),
    Center(child: Text("Dialpad")),
    Center(child: Text("Reach outs")),
    // Center(child: Text("Profile ")),
    MessageAlertBox()
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
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.buttonColor,
          selectedIconTheme: IconThemeData(color: AppColors.buttonColor),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(color: AppColors.buttonColor),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
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
                icon: Image.asset(R.ASSETS_IMAGES_ICON_VECTOR_PNG),
                label: "Dialpad"),
            BottomNavigationBarItem(
                icon: Image.asset(R.ASSETS_IMAGES_ICON_ELEMENT_EQUAL_PNG),
                label: "Reachouts"),
            BottomNavigationBarItem(
                icon: Image.asset(R.ASSETS_IMAGES_ICON_PROFILE_PNG),
                label: "Profile"),
          ]),
    );
  }
}
