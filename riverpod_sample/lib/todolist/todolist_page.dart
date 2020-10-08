import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/todolist/model/todo.dart';
import 'package:riverpod_sample/todolist/notifier/todo_list_state.dart';
import 'package:riverpod_sample/todolist/repository/todolist_repository.dart';
import 'package:riverpod_sample/todolist/service/todolist_service.dart';
import 'package:riverpod_sample/todolist/widget/add_todo_form.dart';
import 'package:riverpod_sample/todolist/widget/todo_card.dart';

final todoListProvider = StateNotifierProvider(
  (ref) => TodoListNotifier(
    todoListService: TodoListService(repo: TodoListRepositoryImpl()),
    initial: [
      Todo(uid: '001', title: 'Play tennis'),
    ],
  ),
);

class TodoListPage extends ConsumerWidget {
  _showAddTodoModal(BuildContext context, TodoListNotifier todoList) {
    showDialog(
      context: context,
      builder: (_) => AddTodoForm(
        onSubmit: (title) {
          todoList.addTodo(title);
          Navigator.of(context).pop();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final todoList = watch(todoListProvider);
    final todos = watch(todoListProvider.state);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...todos
                .map((todo) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TodoCard(
                        todo: todo,
                        onTap: () {
                          todoList.toggleDone(todo.uid);
                        },
                        onSwipe: () {
                          todoList.deleteTodo(todo.uid);
                        },
                      ),
                    ))
                .toList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTodoModal(context, todoList),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
