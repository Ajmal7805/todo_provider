import 'package:flutter/foundation.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void toggleTaskDone(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  int get taskcount {
    return tasks.length;
  }
}
