// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_provider/homescreen.dart';

void main() {
  runApp(MaterialApp(
      title: 'Todey List',
      home: Homescreen(
        addtaskcallback: () {},
      )));
}
