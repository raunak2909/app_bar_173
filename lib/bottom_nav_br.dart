import 'package:app_bar_173/tabs/chat_tab.dart';
import 'package:app_bar_173/tabs/status_tab.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {

  List<Widget> listNavPages = [
    ChatTabPage(),
    StatusTabPage(),
    ChatTabPage(),
    StatusTabPage(),
  ];

  int mSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav'),
      ),
      body: listNavPages[mSelectedIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: Colors.grey.shade200,
        indicatorColor: Colors.orange.shade200,
        selectedIndex: mSelectedIndex,
        onDestinationSelected: (index){
          mSelectedIndex = index;
          setState(() {

          });
        },
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home), label: 'Home'
          ),
          NavigationDestination(
              icon: Icon(Icons.account_circle), label: 'Profile'
          ),
          NavigationDestination(
              icon: Icon(Icons.home), label: 'Home'
          ),
          NavigationDestination(
              icon: Icon(Icons.account_circle), label: 'Profile'
          )
        ],
      ),
    );
  }
}
