import 'package:flutter/material.dart';
import 'task_list_widget.dart';

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
          task.completed = value ?? false;
        },
      ),
    );
  }
}

List<Task> getYourTasks() {
  return [
    Task(title: 'Hacer la compra', completed: true),
    Task(title: 'Estudiar', completed: false),
  ];
}


