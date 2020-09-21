import 'package:flutter/material.dart';
import 'package:riverpod_sample/external/todo_repository.dart';
import 'package:riverpod_sample/model/todolist/todo.dart';

class TodoListService {
  TodoListService({@required this.repo});

  TodoListRepository repo;

  Future<List<Todo>> getTodoList() => repo.getTodoList();

  Future updateTodoList(List<Todo> todoList) => repo.updateTodoList(todoList);
}
