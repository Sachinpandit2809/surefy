import 'package:flutter/material.dart';

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
        toolbarHeight: 0,
        bottom: TabBar(
          
          controller: _tabController,
          tabs: const [
            Tab(text: 'Home'),
            Tab(text: 'Search'),
            Tab(text: 'Notifications'),
            Tab(text: 'Settings'),
          ],
        ),
      ),
      body: TabBarView(

        controller: _tabController,
        children: const [
          Center(child: Text('Home Tab')),
          Center(child: Text('Search Tab')),
          Center(child: Text('Notifications Tab')),
          Center(child: Text('Settings Tab')),
        ],
      ),
    );
  }
}
