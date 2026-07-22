import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String Name;
  VoidCallback onPressed;

 MyButton({super.key,required this.Name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,
    // color: Colors.black45,
    // shape: CircleBorder(eccentricity: 20),
    child: Text(Name),
    
    );
    
  }
}