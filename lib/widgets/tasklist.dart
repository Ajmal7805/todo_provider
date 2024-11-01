// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/modal/task_data.dart';
import 'package:todo_provider/widgets/tasktile.dart';

class Tasklist extends StatelessWidget {
  const Tasklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskcount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return Tasktile(
              longpresscallback: () {
                taskData.deleteTask(task);
              },
              tasktitle: task.name,
              ischeck: task.isdone,
              checkboxcallback: (checkboxState) {
                taskData.toggleTaskDone(index);
              },
            );
          },
        );
      },
    );
  }
}
