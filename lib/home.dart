import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_provider/models/task.dart';
import 'package:todo_provider/widgets/add_task_screen.dart';
import 'package:todo_provider/widgets/tasks_list.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Task> tasks = [
    Task(name: 'STUDY UI'),
    Task(name: 'STUDY API'),
    Task(name: 'STUDY DATABASE')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Icon(
                      Icons.task,
                      size: 40,
                    ),
                  ),
                  Text(
                    "Todoey",
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                  Text(
                    "12 Tasks",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: TasksList(tasks),
              ),
              
            ),
            
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            showModalBottomSheet(context: context, builder: (context)=>AddTaskScreen());
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}




