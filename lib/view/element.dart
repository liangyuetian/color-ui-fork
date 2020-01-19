import 'package:flutter/material.dart';

class Chemical extends StatefulWidget {
  @override
  _Chemical createState() {
    return _Chemical();
  }
}

class _Chemical extends State<Chemical> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Chemical');
  }

  List<Widget> textList = [
    Text('哈哈'),
    Text('哈哈1'),
    Text('哈哈2'),
    Text('哈哈3'),
    Text('哈哈4'),
    Text('哈哈5'),
    Text('哈哈6'),
    Image.network('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        fit: BoxFit.cover),
    Text('哈哈7'),
    Text('哈哈8'),
    Text('哈哈9'),
  ];

  List<Widget> viewList = [];

  getListView() {
    viewList = textList.map((item) {
      return Container(
        width: 130,
        height: 80,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5), // 用于设置对称方向的填充，vertical指top和bottom，horizontal指left和right。
        decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
                image: NetworkImage('https://image.weilanwl.com/color2.0/cardBg.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
        child: item,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top; // 得到刘海屏状态栏高度
    final double width = MediaQuery.of(context).size.width; // 得到屏幕宽度
    print('statusBarHeight:$statusBarHeight');
    print('width:$width');
    getListView();
    return Scaffold(
      appBar: AppBar(title: Text('元素')),
      body: Container(
//        constraints: new BoxConstraints.expand( // 如果不设置宽高，盒子默认收缩，表现和（inline-block）一致，如果设置盒子高度 则宽度变为100%,如果设置 alignment 则宽高100%
//          height: 120.0
//        ),
        padding: EdgeInsets.only(top: statusBarHeight), // 设置padding
//        margin: EdgeInsets.only(left: width), // 设置margin
        decoration: BoxDecoration(
            color: Colors.red,
//            border: Border.all(width: 2.0, color: Colors.grey), // 设置边框
//            borderRadius: BorderRadius.all(Radius.circular(4.0)), // 设置圆角
            image: DecorationImage(
                image: NetworkImage('https://up.enterdesk.com/edpic/f8/e6/97/f8e69731db3d3ab863c877c79e7f9eea.jpg'),
                fit: BoxFit.cover)
        ),
        alignment: Alignment.topLeft,
        child: Wrap(
          direction: Axis.horizontal, // 主轴（mainAxis）的方向，默认为水平。
          spacing: 10, // 主轴方向上的间距
          runAlignment: WrapAlignment.center,
          runSpacing: 10, // 每一列或每一行的的间距
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.down,
          children: viewList,
        ),
      ),
    );
  }
}
