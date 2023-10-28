import 'package:flutter/material.dart';

class StatusTabPage extends StatelessWidget {
  const StatusTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade200,
      child: Center(
        child: Text('My Profile', style: TextStyle(
          fontSize: 34,
          color: Colors.white
        ),),
      ),
    );
  }
}
