import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  Function(bool?)? onChanged;
  final String TaskName;
  final bool TaskComplited;
  Function (BuildContext)? delateFunction;
 
ToDoTile({
    super.key,
    required this.TaskName,
    required this.TaskComplited,
    required this.onChanged,
    required this.delateFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 20, right: 20, left: 20),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          // SlidableAction(icon: Icons.delete,backgroundColor: Colors.blue.shade300 , borderRadius: BorderRadius.circular(20) ),
          SlidableAction( onPressed: delateFunction,icon: Icons.delete,backgroundColor: Colors.red.shade300 , borderRadius: BorderRadius.circular(20) )]),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 150, 149, 149),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Checkbox(value: TaskComplited, onChanged: onChanged , activeColor: Colors.black,),
              Text(
                (TaskName),
                style: TextStyle(color: const Color.fromARGB(255, 1, 1, 1),  decoration: TaskComplited? TextDecoration.lineThrough:TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
