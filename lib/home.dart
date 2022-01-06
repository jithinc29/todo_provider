import 'package:flutter/material.dart';
import 'package:todo_provider/models/task_data.dart';

import 'package:todo_provider/widgets/add_task_screen.dart';
import 'package:todo_provider/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Icon(
                      Icons.task,
                      size: 40,
                    ),
                  ),
                  const Text(
                    "Todoey",
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                  Text(
                    "${Provider.of<TaskData>(context).taskcount} Tasks",
                    style: const TextStyle(fontSize: 20, color: Colors.white),
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
                child: const TasksList(),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
