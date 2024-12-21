import 'package:flutter/material.dart';
import 'package:surefy/resource/styles/app_colors.dart';
import 'package:surefy/screens/connects_screen.dart';
import 'package:surefy/screens/contact_screen.dart';
import 'package:surefy/screens/message_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
        bottom: TabBar(
          automaticIndicatorColorAdjustment: false,
          indicatorColor: AppColors.buttonColor,
          // padding: EdgeInsets.symmetric(horizontal: 10),
          indicatorPadding:
              const EdgeInsets.symmetric(horizontal: -20, vertical: 9),
          unselectedLabelColor: Colors.grey,
          dividerHeight: 0,
          labelColor: Colors.white,

          indicator: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(14),
            color: AppColors.buttonColor,
          ),
          controller: _tabController,
          tabs: const [
            Tab(text: 'Call'),
            Tab(text: 'Contacts'),
            Tab(text: 'Messages'),
            Tab(text: 'Fovourites'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ConnectsScreen(),
          ContactScreen(),
          MessageScreen(),
          Center(child: Text('Favourite tab ')),
        ],
      ),
    );
  }
}
