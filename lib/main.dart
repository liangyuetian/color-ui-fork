import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:color_ui/view/element.dart';
import 'package:color_ui/view/component.dart';
import 'package:color_ui/view/extend.dart';
import 'package:color_ui/view/ncp.dart';
import 'package:color_ui/view/mine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
//          primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(136, 207, 126, 1), // 点击时按下时颜色
        splashColor: Colors.purple, // 点击时波纹颜色
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
  List<BottomNavigationBarItem> bottomBarItems = [];
  Map<BottomNavigationBarItem, StatefulWidget> viewMap = {
    BottomNavigationBarItem(icon: Icon(Icons.insert_chart), title: Text('元素')): Chemical(),
    BottomNavigationBarItem(icon: Icon(Icons.collections), title: Text('组价')): Component(),
    BottomNavigationBarItem(icon: Icon(Icons.extension), title: Text('扩展')): Extend(),
    BottomNavigationBarItem(icon: Icon(Icons.scatter_plot), title: Text('疫情动态')): NCP(),
    BottomNavigationBarItem(icon: Icon(Icons.accessibility), title: Text('关于')): Mine(),
  };
  int _currentIndex = 1;
  StatefulWidget _currentView = Chemical();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewMap.forEach((BottomNavigationBarItem key, StatefulWidget value) {
      bottomBarItems.add(key);
    });
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    Fluttertoast.showToast(
      msg: '点击了floatingActionButton',
      toastLength: Toast.LENGTH_LONG, //
      fontSize: 16, // 字体大小
      timeInSecForIos: 10, // 停留的时长
      gravity: ToastGravity.CENTER // 弹出的位置
    );
    Future.delayed(Duration(seconds: 1), () {
      print('延迟1s');
    });
  }

  void _tap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  getView(int index) {
    int count = 0;
    viewMap.forEach((BottomNavigationBarItem key, StatefulWidget value) {
      if (index == count) {
        _currentView = value;
      }
      count++;
    });
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
