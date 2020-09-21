import 'package:flutter/material.dart';

class AddTodoForm extends StatefulWidget {
  AddTodoForm({@required this.onSubmit});

  final Function(String) onSubmit;

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
