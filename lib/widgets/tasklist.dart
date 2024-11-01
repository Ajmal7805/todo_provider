// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_provider/modal.dart';
import 'package:todo_provider/widgets/tasktile.dart';

class Tasklist extends StatefulWidget {
  const Tasklist({
    super.key,
  });

  @override
  State<Tasklist> createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  List<Task> tasks = [
    Task(name: 'Buy a milk', isdone: true),
    Task(name: 'Buy a coffe', isdone: false),
    Task(name: 'Buy a egg', isdone: true)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Tasktile(
          tasktitle: tasks[0].name,
          ischeck: tasks[0].isdone,
        ),
        Tasktile(
          tasktitle: tasks[1].name,
          ischeck: tasks[1].isdone,
        ),
        Tasktile(
          tasktitle: tasks[2].name,
          ischeck: tasks[2].isdone,
        ),
      ],
    );
  }
}
