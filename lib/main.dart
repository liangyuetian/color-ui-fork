import 'package:flutter/material.dart';

import 'package:color_ui/view/element.dart';
import 'package:color_ui/view/component.dart';
import 'package:color_ui/view/extend.dart';
import 'package:color_ui/view/mine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // 去掉右上角debug图标
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    print(_counter);
    setState(() {
      _counter++;
    });
  }

  List<BottomNavigationBarItem> bottomBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.insert_chart), title: Text('元素')),
    BottomNavigationBarItem(icon: Icon(Icons.collections), title: Text('组价')),
    BottomNavigationBarItem(icon: Icon(Icons.extension), title: Text('扩展')),
    BottomNavigationBarItem(icon: Icon(Icons.accessibility), title: Text('关于'))
  ];
  List<StatefulWidget> viewList = [Chemical(), Component(), Extend(), Mine()];
  int _currentIndex = 0;
  StatefulWidget _currentView = Chemical();

  void _tap(int index) {
    setState(() {
      _currentIndex = index;
    });
    print(viewList);
  }

  getView(int index) {
//    if (index == 0) {
//      return Chemical();
//    } else if (index == 1) {
//      return Component();
//    } else if (index == 2) {
//      return Extend();
//    } else {
//      return Mine();
//    }
    _currentView = viewList[index];
  }

  @override
  Widget build(BuildContext context) {
    getView(_currentIndex);

    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
      backgroundColor: Colors.transparent,
      body: _currentView,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomBarItems,
        currentIndex: _currentIndex,
        onTap: _tap,
        type: BottomNavigationBarType.fixed,
        fixedColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
