import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/playingcard/playingcard_page.dart';
import 'package:riverpod_sample/todolist/todolist_page.dart';

class StreakApp extends StatefulWidget {
  @override
  _StreakAppState createState() => _StreakAppState();
}

class _StreakAppState extends State<StreakApp>
    with SingleTickerProviderStateMixin {
  int _index;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _index = 0;
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final navBar = BottomNavigationBar(
      currentIndex: _index,
      onTap: (index) {
        _controller.jumpToPage(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('TODO'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          title: Text('Playing Card'),
        )
      ],
    );

    final pageView = PageView(
      controller: _controller,
      physics: NeverScrollableScrollPhysics(),
      onPageChanged: (index) {
        setState(() {
          _index = index;
        });
      },
      children: [
        TodoListPage(),
        PlayingCardPage(),
      ],
    );

    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Streak',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Streak'),
          ),
          body: SafeArea(child: pageView),
          bottomNavigationBar: navBar,
        ),
      ),
    );
  }
}
