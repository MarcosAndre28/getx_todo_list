import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_todo_list/app/core/utils/keys.dart';
import 'package:getx_todo_list/app/data/models/task_model.dart';
import 'package:getx_todo_list/app/data/services/storage/service.dart';

class TaskProvider {
  final StorageService _storage = Get.find<StorageService>();

  List<TaskModel> readTasks() {
    var tasks = <TaskModel>[];
    jsonDecode(
      _storage.read(AppKeys.taskKey).toString(),
    ).forEach(
      (task) => tasks.add(
        TaskModel.fromJson(task),
      ),
    );
    return tasks;
  }
}
