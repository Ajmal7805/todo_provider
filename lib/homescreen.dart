// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_provider/addtaskscreen.dart';
import 'package:todo_provider/modal.dart';
import 'package:todo_provider/widgets/tasklist.dart';

class Homescreen extends StatefulWidget {
  final Function addtaskcallback;
  const Homescreen({super.key, required this.addtaskcallback});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy coffee'),
    Task(name: 'Buy eggs')
  ];
  String? newtasktitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => AddTaskScreen(addTask: (newTaskTitle) {
              setState(() {
                tasks.add(Task(name: newTaskTitle));
              });
              Navigator.pop(context);
            }),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, right: 30, left: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        size: 30,
                        color: Colors.blue,
                        Icons.list,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Tasklist(tasks: tasks),
            ),
          )
        ],
      ),
    );
  }
}
