import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  

 late String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff757575),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              textAlign: TextAlign.center,
            ),
            TextField(
              // autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask){
                newTaskTitle=newTask;


              },
            ),
            ElevatedButton(onPressed: () {


              print(newTaskTitle);
            }, child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
