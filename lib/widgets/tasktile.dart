// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool ischeck;
  final String tasktitle;
  final Function(bool?)? checkboxcallback; // Specify the type for the callback

  const Tasktile({
    super.key,
    required this.tasktitle,
    required this.ischeck,
    this.checkboxcallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
          decoration: ischeck ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: ischeck,
        onChanged: checkboxcallback, // Use a comma here
      ),
    );
  }
}
