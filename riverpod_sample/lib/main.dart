import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/external/todo_repository.dart';
import 'package:riverpod_sample/external/todo_service.dart';
import 'package:riverpod_sample/model/todo.dart';
import 'package:riverpod_sample/notifier/todo_list_state.dart';

void main() {
  runApp(MyApp());
}

final repo = TodoListRepositoryImpl();
final service = TodoListService(repo: repo);
final todoListProvider = StateNotifierProvider(
  (ref) => TodoListState(
    service: service,
    initial: [
      Todo(uid: '001', title: 'Play tennis'),
    ],
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Streak',
        home: TodoListPage(),
      ),
    );
  }
}

class TodoCard extends ConsumerWidget {
  TodoCard({@required this.todo});

  Todo todo;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final h5 = Theme.of(context).textTheme.headline5;
    final todoList = watch(todoListProvider);

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
        onTap: () {
          todoList.toggleDone(todo.uid);
        },
        onHorizontalDragEnd: (e) {
          todoList.deleteTodo(todo.uid);
        },
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

class AddTodoForm extends StatefulWidget {
  AddTodoForm({@required this.onSubmit});

  Function(String) onSubmit;

  @override
  _AddTodoFormState createState() => _AddTodoFormState(onSubmit);
}

class _AddTodoFormState extends State<AddTodoForm> {
  Function(String) onSubmit;
  String _title;

  _AddTodoFormState(this.onSubmit);

  @override
  void initState() {
    super.initState();
    _title = '';
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New Todo'),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Title',
              ),
              onChanged: (title) {
                setState(() {
                  _title = title;
                });
              },
            ),
          ],
        ),
      ),
      actions: [
        SimpleDialogOption(
          child: Text('ok'),
          onPressed: () {
            onSubmit(_title);
          },
        ),
      ],
    );
  }
}

class TodoListPage extends ConsumerWidget {
  _showAddTodoModal(BuildContext context, TodoListState todoList) {
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
      appBar: AppBar(
        title: Text('Riverpod sample'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...todos
                .map((todo) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TodoCard(todo: todo),
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
