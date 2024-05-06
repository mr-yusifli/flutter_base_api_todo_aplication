import 'package:todo_app/constans/task_type.dart';

class Task {
  final TaskType type;
  final String title;
  final String description;
  bool isCompleted;
  Task(
      {required this.type,
      required this.title,
      required this.description,
      required this.isCompleted});
}
