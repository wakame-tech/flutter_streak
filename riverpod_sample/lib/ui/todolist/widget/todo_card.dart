import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/model/todolist/todo.dart';

class TodoCard extends ConsumerWidget {
  TodoCard({
    @required this.todo,
    this.onTap,
    this.onSwipe,
  });

  final Todo todo;
  final Function onTap;
  final Function onSwipe;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final h5 = Theme.of(context).textTheme.headline5;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(10, 10),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onTap,
        onHorizontalDragEnd: (_) => onSwipe(),
        child: SizedBox(
            width: double.infinity,
            child: Container(
              color: todo.done ? Colors.greenAccent : Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      todo.title,
                      style: h5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      todo.uid,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
