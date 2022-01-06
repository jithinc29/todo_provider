

import 'package:flutter/foundation.dart';
import 'package:todo_provider/models/task.dart';

class TaskData extends ChangeNotifier
{

   List<Task> tasks = [];
   int get taskcount{
     return tasks.length;
   }
 void addTask(String newTaskTitle)
  {
    
    final task=Task(name: newTaskTitle);
   
    tasks.add(task);
    notifyListeners();

  }
  void updatetask(Task task)
  {
    task.taskDone();
    notifyListeners();

  }
  void deletetask(Task task)
  {
    tasks.remove(task);
    notifyListeners();

  }


}