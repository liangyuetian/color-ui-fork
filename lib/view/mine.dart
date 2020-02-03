import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mine extends StatefulWidget {
  @override
  _Mine createState() {
    return _Mine();
  }
}

class NavItem {
  const NavItem({this.url, @required this.title}) : assert(title != null);

  final String title;
  final String url;
}

List<NavItem> navigationList = [
  NavItem(url: '/home', title: 'GitHub'),
  NavItem(url: '/home', title: '关于这个color-ui demo'),
  NavItem(url: '/home', title: '日志'),
  NavItem(url: '/home', title: '赞赏支持'),
  NavItem(url: '/home', title: '意见反馈'),
  NavItem(url: '/home', title: 'Bug测试'),
  NavItem(url: '/mine', title: 'mine'),
];

class _Mine extends State<Mine> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Mine');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(title: Text('我的')),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(color: Colors.green),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  child: Text('ButtonBar FlatButton'),
                  textColor: Colors.blue[30],
                  onPressed: () {
                    print('FlatButton onPressed');
                  },
                ),
                FlatButton(
                  child: Text('FlatButton'),
                  textColor: Colors.blue[30],
                  onPressed: () {
                    print('FlatButton onPressed');
                  },
                ),
                CloseButton(),
                BackButton()
              ],
            ),
            FlatButton(
              child: Text('FlatButton'),
              textColor: Colors.blue[30],
              onPressed: () {
                print('FlatButton onPressed');
              },
            ),
            RaisedButton(
              child: Text('RaisedButton'),
              disabledColor: Colors.red,
              onPressed: () {
                print('RaisedButton onPressed');
              },
            ),
            Opacity(
              child: Text('透明'),
              opacity: 0.1,
            ),
            FractionallySizedBox(
              // 设置百分比的盒子
              widthFactor: 1,
              child: Container(
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: new Border.all(color: Color(0xFFFF0000), width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    children: navigationList.map((NavItem item) {
                      return SizedBox(
                        // 设置高度，并且内容垂直居中了
                        height: 60,
                        child: Flex(
                          // flex 布局
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        crossAxisAlignment: CrossAxisAlignment.start, // 和 Axis.vertical 搭配
                          direction: Axis.horizontal, // horizontal 水平；vertical
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    child: Icon(Icons.android),
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                  ),
                                  Text(
                                    item.title,
                                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(Icons.arrow_forward_ios, color: Color(0xFFDDDDDD),),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
