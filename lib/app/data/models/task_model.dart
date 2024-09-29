import 'package:equatable/equatable.dart';

class TaskModel extends Equatable{

  const TaskModel({
    required this.title,
    required this.icon,
    required this.color,
    this.todos,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
    title: json['title'] as String,
    icon: json['icon'] as String,
    color: json['color'] as String,
    todos: json['todos'] as List<String>,
    );

  final String title;
  final String icon;
  final String color;
  final List<dynamic>? todos;

  TaskModel copyWith({
    String? title,
    String? icon,
    String? color,
    List<dynamic>? todos,
  }) {
    return TaskModel(
      title: title ?? this.title,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      todos: todos ?? this.todos,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['icon'] = icon;
    data['color'] = color;
    data['todos'] = todos;
    return data;
  }

  @override
  List<Object?> get props => [title, icon, color];
}
