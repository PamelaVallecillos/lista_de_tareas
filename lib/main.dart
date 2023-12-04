import 'package:flutter/material.dart';
import 'models/task.dart';
import 'screens/todo_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de tareas'),
        ),
        body: YourTaskListWidget(),
      ),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de tareas',
      home: ToDoScreen(),
    );
  }
}


