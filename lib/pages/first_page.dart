import 'package:flutter/material.dart';

class pageone extends StatelessWidget {
  const pageone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),

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
              Container(//profile Nevigeton
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
                  child: Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/pagetwo');
                          },

                          child: Container(
                            height: 50,
                            width: 50,

                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 248, 248, 248),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.person,
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
                  "Dashboard",
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

          Container(
            height: 1,
            width: 411,
            color: const Color.fromARGB(255, 146, 146, 146),
          ),

          Container(
            height: 120,
            width: 411,
            margin: EdgeInsets.only(top: 10),

            child: Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  height: 120,
                  width: 100,

                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "List",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/todo');
                          },

                          child: Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 125, 124, 124),
                            ),
                            child: Icon(
                              Icons.list,
                              size: 30,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 120,
                  width: 100,

                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Clander",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 125, 124, 124),
                        ),
                        child: Icon(Icons.calendar_month, size: 30),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 120,
                  width: 100,

                  child: Column(
                    children: [
                      SizedBox(
                        child: Text(
                          "Heat Map",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 125, 124, 124),
                        ),
                        child: Icon(Icons.task, size: 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
