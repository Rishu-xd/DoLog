import 'dart:async';

import 'package:anoink/util/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final Controller;
  VoidCallback onSave;
  VoidCallback oncancel;
 DialogBox({super.key, required this.Controller, required this.onSave, required this.oncancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 223, 222, 222),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Add a new task",
                focusColor: Colors.black,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(Name: "Add", onPressed: onSave, ),
                const SizedBox(width: 8),
                MyButton(Name: "Cancel", onPressed: oncancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
