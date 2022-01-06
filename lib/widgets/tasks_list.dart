import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/models/task_data.dart';

import 'package:todo_provider/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Consumer<TaskData>(
      builder: (context,taskdata,child)
      {
        return ListView.builder(
          itemCount: taskdata.taskcount,
          itemBuilder: (context, index) {
            final task=taskdata.tasks[index];
            return TasksTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskdata.updatetask(task);

                }, longpressCallback: (){

                  taskdata.deletetask(task);
                },);
          });
        
      }
       
    );
  }
}
