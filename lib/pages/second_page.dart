import 'package:flutter/material.dart';

class pagetwo extends StatelessWidget {
  const pagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Profile"),
        backgroundColor: const Color.fromARGB(255, 2, 2, 2),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        centerTitle: false,
      ),
       backgroundColor: Colors.black,
       body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
           
            margin: EdgeInsetsGeometry.only(left: 106, top: 50),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 248, 248, 248),
              borderRadius: BorderRadius.circular(100),


            ),

            child: Icon(Icons.person , size: 150,),
          )
        ],
       )
    );
  }
}