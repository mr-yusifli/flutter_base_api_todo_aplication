import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';

class TodoItems extends StatefulWidget {
  const TodoItems({super.key, required this.task});
  final Todo task;
  // final String title;
  @override
  State<TodoItems> createState() => _TodoItemsState();
}

class _TodoItemsState extends State<TodoItems> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.task.completed!
          ? const Color.fromARGB(255, 177, 176, 176)
          : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /*
            widget.task.type == TaskType.note
                ? Image.asset("assets/images/category_1.png")
                : widget.task.type == TaskType.contest
                    ? Image.asset("assets/images/category_3.png")
                    : Image.asset("assets/images/category_2.png"),
                    */
            Image.asset("assets/images/category_1.png"),
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.task.todo!,
                    style: TextStyle(
                      decoration: widget.task.completed!
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "UserId: ${widget.task.userId!}",
                    style: TextStyle(
                      decoration: widget.task.completed!
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      fontSize: 14,
                      color: Colors.black38,
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              ),
            ),
            Checkbox(
                value: isChecked,
                onChanged: (val) => {
                      setState(() {
                        widget.task.completed = !widget.task.completed!;
                        isChecked = val!;
                      }),
                    }),
          ],
        ),
      ),
    );
  }
}
