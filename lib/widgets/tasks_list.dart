import 'package:flutter/material.dart';
import 'package:todo_provider/models/task.dart';

import 'package:todo_provider/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;
  const TasksList(this.tasks);
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
      return TasksTile(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback:(checkboxState)
        {
          setState(() {
            widget.tasks[index].taskDone();
          });
         
        }
      );
    });
  }
}
