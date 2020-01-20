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

  List<Map<String, dynamic>> textList = [
    {
      'title': '布局',
      'color': 0xFFFFFFFF,
      'descrtion': 'Layout',
      'bgColor': 0xFF1cbbb4,
      'bgImage': 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
      'icon': 'format_textdirection_l_to_r'
    },
    {
      'title': '背景',
      'color': 0xFFFFFFFF,
      'descrtion': 'Layout',
      'bgColor': 0xFF0081ff,
      'bgImage': 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
      'icon': 'format_textdirection_l_to_r'
    },
    {
      'title': '文本',
      'color': 0xFFFFFFFF,
      'descrtion': 'Layout',
      'bgColor': 0xFF6739b6,
      'bgImage': 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
      'icon': 'format_textdirection_l_to_r'
    },
    {
      'title': '图标',
      'color': 0xFFFFFFFF,
      'descrtion': 'Layout',
      'bgColor': 0xFF9c26b0,
      'bgImage': 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
      'icon': 'format_textdirection_l_to_r'
    },
    {
      'title': '按钮',
      'color': 0xFFFFFFFF,
      'descrtion': 'Layout',
      'bgColor': 0xFFe03997,
      'bgImage': 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
      'icon': 'format_textdirection_l_to_r'
    },
    {
      'title': '标签',
      'color': 0xFFFFFFFF,
      'descrtion': 'Layout',
      'bgColor': 0xFFa5673f,
      'bgImage': 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
      'icon': 'format_textdirection_l_to_r'
    },
    {
      'title': '头像',
      'color': 0xFFFFFFFF,
      'descrtion': 'Layout',
      'bgColor': 0xFFe54d42,
      'bgImage': 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
      'icon': 'format_textdirection_l_to_r'
    },
    {
      'title': '进度条',
      'color': 0xFFFFFFFF,
      'descrtion': 'Layout',
      'bgColor': 0xFFf37b1d,
      'bgImage': 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
      'icon': 'format_textdirection_l_to_r'
    },
    {
      'title': '边框阴影',
      'color': 0xFFFFFFFF,
      'descrtion': 'Layout',
      'bgColor': 0xFF8dc63f,
      'bgImage': 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
      'icon': 'format_textdirection_l_to_r'
    },
    {
      'title': '加载',
      'color': 0xFFFFFFFF,
      'descrtion': 'Layout',
      'bgColor': 0xFF39b54a,
      'bgImage': 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
      'icon': 'format_textdirection_l_to_r'
    },
//    Image.network('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
//        fit: BoxFit.cover),
//    Image.network('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
//        fit: BoxFit.cover),
//    Image.network('http://i3.17173cdn.com/2fhnvk/YWxqaGBf/cms3/pTLITQbluyimehE.jpg!a-3-540x.jpg', fit: BoxFit.cover),
//    Image.network('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
//        fit: BoxFit.cover),
//    Image.network('http://i3.17173cdn.com/2fhnvk/YWxqaGBf/cms3/UaPFsMbluyimpCi.jpg!a-3-540x.jpg', fit: BoxFit.cover),
//    Image.network('http://i3.17173cdn.com/2fhnvk/YWxqaGBf/cms3/YyDzIGbluyimubl.jpg!a-3-540x.jpg', fit: BoxFit.cover),
  ];

  List<Widget> viewList = [];

  Widget generateView(Map<String, dynamic> item) {
    Widget container = Container(
        width: 130,
        // 因为父盒子是 FractionallySizedBox 所以宽度不生效
//          height: 80,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        // 用于设置对称方向的填充，vertical指top和bottom，horizontal指left和right。
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color(item['bgColor']),
            image: DecorationImage(
                image: NetworkImage('https://image.weilanwl.com/color2.0/cardBg.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  item['title'],
                  style: TextStyle(color: Color(item['color'])),
                ),
                Icon(
                  Icons.format_textdirection_l_to_r,
                  color: Colors.orange,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                // alphabetic 用于对齐字母字符的字形底部的水平线,相当于vertical-align: bottom; ideographic 用于对齐表意文字的水平线相当于vertical-align: middle

                children: <Widget>[
                  Text(
                    item['descrtion'],
                    style: TextStyle(color: Color(item['color'])),
                  ),
                  Text('23'),
                ],
              ),
            )
          ],
        ));
    return FractionallySizedBox(
      // 设置盒子为父盒子的45%
      widthFactor: 0.45,
      child: container,
    );
  }

  getListView() {
    viewList = textList.map((dynamic item) {
      return generateView(item);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top; // 得到刘海屏状态栏高度
    final double width = MediaQuery.of(context).size.width; // 得到屏幕宽度
    print('刘海屏状态栏高度:$statusBarHeight');
    print('屏幕宽度:$width');
    getListView();
    return Scaffold(
      backgroundColor: Colors.transparent,
//      appBar: AppBar(
//        title: Text('元素'),
//        backgroundColor: Colors.transparent,
//      ),
      body: Container(
//        constraints: new BoxConstraints.expand( // 如果不设置宽高，盒子默认收缩，表现和（inline-block）一致，如果设置盒子高度 则宽度变为100%,如果设置 alignment 则宽高100%
//          height: 120.0
//        ),
//          padding: EdgeInsets.only(top: statusBarHeight), // 设置padding
//        margin: EdgeInsets.only(left: width), // 设置margin
          decoration: BoxDecoration(
//              color: Colors.red,
//            border: Border.all(width: 2.0, color: Colors.grey), // 设置边框
//            borderRadius: BorderRadius.all(Radius.circular(4.0)), // 设置圆角
              image: DecorationImage(
            image: NetworkImage('https://up.enterdesk.com/edpic/f8/e6/97/f8e69731db3d3ab863c877c79e7f9eea.jpg'),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          )),
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              verticalDirection: VerticalDirection.down, // 排列方向 down:从上到下，up从下到上
              children: <Widget>[
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://i3.17173cdn.com/2fhnvk/YWxqaGBf/cms3/hCaiRrbluyimros.jpg!a-3-540x.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  // 主轴（mainAxis）的方向，默认为水平。
                  spacing: 10,
                  // 主轴方向上的间距
                  runAlignment: WrapAlignment.center,
                  runSpacing: 10,
                  // 每一列或每一行的的间距
                  textDirection: TextDirection.ltr,
                  verticalDirection: VerticalDirection.down,
                  children: viewList,
                ),
              ],
            ),
          )),
    );
  }
}
