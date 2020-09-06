// Copyright © 2020 WorldRIZe. All rights reserved.

import 'package:flutter/cupertino.dart';
import 'package:riverpod_sample/external/todo_service.dart';
import 'package:riverpod_sample/model/todo.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

class TodoListState extends StateNotifier<List<Todo>> {
  TodoListState({@required this.service, List<Todo> initial: const []})
      : super(initial);

  TodoListService service;

  Future<List<Todo>> getTodoList() async {
    return service.getTodoList();
  }

  Future addTodo(String title) async {
    final todo = Todo(title: title, uid: Uuid().v4());
    state = [...state, todo];
    await service.updateTodoList(state);
  }

  Future deleteTodo(String id) async {
    state = state.where((todo) => todo.uid != id).toList();
    await service.updateTodoList(state);
  }

  Future toggleDone(String id) async {
    state = [
      for (final todo in state)
        todo.uid == id ? todo.copyWith(done: !todo.done) : todo
    ];
    await service.updateTodoList(state);
  }
}
