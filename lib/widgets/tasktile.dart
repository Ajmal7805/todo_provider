// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Tasktile extends StatefulWidget {
  final bool ischeck;
  final String tasktitle;
  const Tasktile({super.key, required this.tasktitle, required this.ischeck});

  @override
  State<Tasktile> createState() => _TasktileState();
}

class _TasktileState extends State<Tasktile> {
  late bool? ischeck;

  @override
  void initState() {
    super.initState();
    ischeck = widget.ischeck;
  }

  void toggleCheckbox(bool? value) {
    setState(() {
      ischeck = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.tasktitle,
        style:
            TextStyle(decoration: ischeck! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkboxmodal(
        ischeck: ischeck!,
        onChanged: toggleCheckbox,
      ),
    );
  }
}

class Checkboxmodal extends StatelessWidget {
  final bool ischeck;
  final ValueChanged<bool?> onChanged;

  const Checkboxmodal(
      {super.key, required this.ischeck, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ischeck,
      onChanged: onChanged,
    );
  }
}
