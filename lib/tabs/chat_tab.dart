import 'package:flutter/material.dart';

class ChatTabPage extends StatelessWidget {
  const ChatTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
      body: Container(
          color: Colors.orange.shade200,
        child: Center(
          child: Text('Home', style: TextStyle(
            fontSize: 34,
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}
