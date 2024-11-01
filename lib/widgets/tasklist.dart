// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_provider/modal.dart';
import 'package:todo_provider/widgets/tasktile.dart';

class Tasklist extends StatefulWidget {
  final List<Task> tasks;
  const Tasklist({
    super.key,
    required this.tasks,
  });

  @override
  State<Tasklist> createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return Tasktile(
          tasktitle: widget.tasks[index].name,
          ischeck: widget.tasks[index].isdone,
          checkboxcallback: (checkboxstate) {
            setState(() {
              widget.tasks[index].toggledone();
            });
          },
        );
      },
    );
  }
}
