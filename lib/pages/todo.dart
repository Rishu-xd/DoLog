import 'package:anoink/util/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:anoink/util/dialog_box.dart';

class Todo extends StatefulWidget {
  
  const Todo({super.key });

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  final _controller =TextEditingController();
  //list of tasks
  List todoList =[
    ["edit me",false],
 
  ];

  void checkboxChanged(bool? value, int index){
     setState(() {
       todoList[index][1] = !todoList[index][1];
     });
  }

  void saveNewTask(){
    setState(() {
      
      todoList.add([_controller.text, false]);
     _controller.clear();
    });
     Navigator.of(context).pop();
  }

  void createNewTask(){
    showDialog(context: context, builder: (context) {
      return DialogBox(
        Controller: _controller,
        onSave: saveNewTask,
        oncancel: ()=>Navigator.of(context).pop(),
      );
    });
  }


  void delateTask(int index){
      setState(() {
        
        todoList.removeAt(index);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 210,
                width: 411,

                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 17, 17, 17),
                ),
              ),
              Container(
                //profile Nevigeton
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
                  child: Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/pageone');
                          },

                          child: Container(
                            height: 50,
                            width: 50,

                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 248, 248, 248),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.dashboard_outlined,
                              size: 30,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/settings');
                          },

                          child: Container(
                            height: 50,
                            width: 50,

                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 248, 248, 248),
                              borderRadius: BorderRadius.circular(50),
                            ),

                            child: Icon(
                              Icons.settings,
                              size: 30,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsetsGeometry.only(left: 10, top: 150),
                child: Text(
                  "ToDo List",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),

              Container(
                margin: EdgeInsetsGeometry.only(left: 10, top: 130),
                child: Text(
                  "20 jul 2026",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),

         

          Expanded(
            child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context,index){
                return ToDoTile(
                  TaskName: todoList[index][0],
                  TaskComplited: todoList[index][1],
                  onChanged: (value) => checkboxChanged(value, index),
                  delateFunction: (context)=>delateTask(index),

                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton:  FloatingActionButton(
            onPressed: createNewTask,
            backgroundColor: Colors.white,
            child: Icon(Icons.add_task_rounded),
          ),
    );
  }
}
