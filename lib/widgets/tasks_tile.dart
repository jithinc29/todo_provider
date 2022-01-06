import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const TasksTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    });

  final String taskTitle;

  final bool isChecked;
  final Function(bool?) checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isChecked?TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox(
      value: isChecked,
      onChanged: checkboxCallback,
      ),
    );
  }
}


