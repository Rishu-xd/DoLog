import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 2, 2),
      appBar: AppBar(
          title: Text("Settings"),
        backgroundColor: const Color.fromARGB(255, 45, 45, 45),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
        centerTitle: true,
      ),
    );
  }
}