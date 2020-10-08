import 'package:flutter/material.dart';
import 'package:riverpod_sample/todolist/model/todo.dart';
import 'package:riverpod_sample/todolist/repository/todolist_repository.dart';

class TodoListService {
  TodoListService({@required this.repo});

  TodoListRepository repo;

  Future<List<Todo>> getTodoList() => repo.getTodoList();

  Future updateTodoList(List<Todo> todoList) => repo.updateTodoList(todoList);
}
