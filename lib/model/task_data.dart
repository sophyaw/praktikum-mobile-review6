import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:pertemuan7/model/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy moza'),
    Task(name: 'Buy arin'),
    Task(name: 'Buy kingdom'),
    Task(name: 'Buy mozi'),
    Task(name: 'Buy pasda'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
