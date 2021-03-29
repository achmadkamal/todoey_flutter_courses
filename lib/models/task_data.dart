import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:todoey_flutter_courses/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: 'Long press to delete task'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskInput) {
    final taskInput = Task(taskName: newTaskInput);
    _tasks.add(taskInput);
    notifyListeners();
  }

  void updatingCheckBox(Task checkBox) {
    checkBox.toggleDone();
    notifyListeners();
  }

  void deletingTask(Task deleteTask) {
    _tasks.remove(deleteTask);
    notifyListeners();
  }
}
