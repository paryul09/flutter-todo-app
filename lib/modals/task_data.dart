import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:apna/modals/task.dart';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(title: 'Complete Project'),
    Task(title: 'Buy Gift'),
    Task(title: 'Do leetcode'),
  ];
  int get taskSize{
    return _tasks.length;
  }
  UnmodifiableListView<Task> get tasks{
      return UnmodifiableListView(_tasks);
  }
  void addTask(String newTaskValue){
    Task task = Task(title: newTaskValue);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
}