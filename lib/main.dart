// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/homescreen.dart';
import 'package:todo_provider/modal/task_data.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TaskData(),
    child: MaterialApp(
        title: 'Todey List',
        home: Homescreen(
          addtaskcallback: () {},
        )),
  ));
}
