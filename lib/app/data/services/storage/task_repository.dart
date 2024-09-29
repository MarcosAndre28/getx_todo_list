import 'package:getx_todo_list/app/data/models/task_model.dart';
import 'package:getx_todo_list/app/data/providers/task/task_provider.dart';

class TaskRepository {
  TaskRepository({required this.taskProvider});

  TaskProvider taskProvider;

  List<TaskModel> readTasks() => taskProvider.readTasks();

  void writeTasks(List<TaskModel> tasks) => taskProvider.writeTasks(tasks);
}
