import 'package:get/get.dart';
import 'package:getx_todo_list/app/data/models/task_model.dart';
import 'package:getx_todo_list/app/data/services/storage/task_repository.dart';

class HomeController extends GetxController {
  HomeController({required this.taskRepository});

  TaskRepository taskRepository;

  final tasks = <TaskModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTasks());
    ever(tasks, (_) => taskRepository.writeTasks(tasks));
  }

  @override
  void onClose() {
    super.onClose();
  }
}
