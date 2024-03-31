import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String task;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  const TodoTile(
      {super.key,
      required this.task,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            Text(
              task,
              style: TextStyle(
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
