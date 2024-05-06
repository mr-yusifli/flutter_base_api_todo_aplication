// ignore_for_file: public_member_api_docs, sort_constructors_first
class Todo {
  int? id;
  String? todo;
  bool? completed;
  int? userId;
  Todo({
    required this.id,
    required this.todo,
    required this.completed,
    required this.userId,
  });

  //From JSON
  Todo.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    todo = json["todo"];
    completed = json["completed"];
    userId = json["userId"];
  }
  //To JSON
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data["id"] = id;
    data["todo"] = todo;
    data["completed"] = completed;
    data["userId"] = userId;

    return data;
  }
}
