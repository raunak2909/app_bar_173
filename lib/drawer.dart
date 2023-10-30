import 'package:app_bar_173/tabs/chat_tab.dart';
import 'package:app_bar_173/tabs/status_tab.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  List<Map<String, dynamic>> drawerItems = [
    {"icon": Icons.settings, "title": "Settings"},
    {"icon": Icons.info_outline, "title": "About Us"},
    {"icon": Icons.call, "title": "Contact Us"},
    {"icon": Icons.account_circle, "title": "My Profile"},
    {"icon": Icons.logout, "title": "Sign Out"}
  ];

  int selectedIndex = 0;

  List<Widget> listDrawerPages = [
    ChatTabPage(),
    StatusTabPage(),
    ChatTabPage(),
    StatusTabPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: listDrawerPages[selectedIndex],
      drawer: Drawer(
        width: 300,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(11),
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue.shade200
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: 11,
                    ),
                    SizedBox(
                      height: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Wscube Tech'),
                          Text('wscube@gmail.com')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: drawerItems.length,
                  itemBuilder: (_, index){
                return InkWell(
                  onTap: (){
                    if(index==4){
                      //dialog
                    } else {
                      selectedIndex = index;
                      setState((){});
                    }
                    Navigator.pop(context);

                  },
                  child: ListTile(
                    leading: Icon(drawerItems[index]['icon']),
                    title: Text(drawerItems[index]['title']),
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Version 1.0'),
            )
          ],
        )
      ),
    );
  }
}
