import 'package:app_bar_173/tabs/calls_tab.dart';
import 'package:app_bar_173/tabs/chat_tab.dart';
import 'package:app_bar_173/tabs/status_tab.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin{
  late TabController mTabController;
  String mTitle = "Chats";

  @override
  void initState() {
    super.initState();
    mTabController = TabController(length: 3, vsync: this);

    mTabController.addListener(() {
      print(mTabController.index);
      if(mTabController.index==0){
        mTitle = "Chats";
      } else if(mTabController.index==1){
        mTitle = "Status";
      } else {
        mTitle = "Calls";
      }
      setState(() {

      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mTitle),
      ),
      body: Column(
        children: [
          TabBar(
            isScrollable: true,
            controller: mTabController,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chat),
                    SizedBox(width: 11,),
                    Text('Chats'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.update),
                    SizedBox(width: 11,),
                    Text('Status'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 11,),
                    Text('Calls'),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: mTabController,
              children: [
                ChatTabPage(),
                StatusTabPage(),
                CallTabPage()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
