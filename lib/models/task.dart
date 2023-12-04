import 'package:flutter/material.dart';
import 'package:practica_de_laboratorio_5/main.dart';
import 'package:practica_de_laboratorio_5/models/task.dart'; 

class YourTaskListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Task> tasks = getYourTasks(); 

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return YourTaskWidget(task: tasks[index]);
      },
    );
  }
}

class Task {
  String title;
  bool completed;

  Task({required this.title, required this.completed});
} 

class YourTaskWidget extends StatelessWidget {
  final Task task;

  YourTaskWidget({required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      trailing: Checkbox(
        value: task.completed,
        onChanged: (value) {
        },
      ),
    );
  }
}

List<Task> getYourTasks() {
  return [
    Task(title: 'Hacer las compras', completed: false),
    Task(title: 'Estudiar para el examen', completed: true),
         Task(title: 'Hacer la tarea', completed: false),
  ];
}

