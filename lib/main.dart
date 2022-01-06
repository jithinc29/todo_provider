import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/home.dart';
import 'package:todo_provider/models/task_data.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (BuildContext context) =>TaskData(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
      ),
      home:  Home()
    );
  }
}

