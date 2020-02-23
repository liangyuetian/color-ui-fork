import 'package:flutter/material.dart';

class Extend extends StatefulWidget {
  @override
  _Extend createState() {
    return _Extend();
  }
}

class _Extend extends State<Extend> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: PageStorageKey('extend'),
        appBar: AppBar(title: Text('扩展')),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            AspectRatio(
              // 保持 宽高比 width:height
              aspectRatio: 2,
              child: Container(
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
            Container(
              alignment: Alignment.topLeft, // 给 container 设置alignment属性可以撑满宽度
              decoration: BoxDecoration(color: Colors.brown),
              child: Align(
                alignment: Alignment.center,
                widthFactor: 2, // 宽度因子，如果设置的话，Align的宽度就是child的宽度乘以这个值，不能为负数。
                heightFactor: 2, // 高度因子，如果设置的话，Align的高度就是child的高度乘以这个值，不能为负数。
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                  ),
                  child: Text('也许每个人出生的时候都以为这世界都是为他一个人而存在的，当他发现自己错的时候，他便开始长大。'),
                ),
              ),
            ),
            Stack( // 如果子元素没有占满空间，需要让Stack占满空间的话，可以在外层包裹ConstrainedBox来确保Stack占满屏幕
              overflow: Overflow.visible,
              // 此属性决定如何显示超出Stack显示空间的子widget，值为Overflow.clip时，超出部分会被剪裁（隐藏），值为Overflow.visible 时则不会。
              fit: StackFit.loose,
              // 此参数用于决定没有定位的子widget如何去适应Stack的大小。StackFit.loose表示使用子widget的大小，StackFit.expand表示扩伸到Stack的大小。
              textDirection: TextDirection.ltr, // Positioned 排列的方向，从左到右，还是从右到左
              children: <Widget>[
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Text(
                    '相依为命的意思，就是任何一个人离开，另一个人就如同失去了性命。',
                    style: TextStyle(fontSize: 16, height: 1.125, color: Colors.white), // height 就是行高 line-height
                  ),
                ),
                Positioned(
                    top: 36,
                    left: 0,
                    right: 0, // 同时设置right:0可以约束子元素不超出盒子
                    // 在水平方向时，你只能指定left、right、width三个属性中的两个，如指定left和width后，right会自动算出(left+width)，如果同时指定三个属性则会报错，垂直方向同理。
                    child: Container(
                      child: Text(
                        '你跳不出这个世界，是因为你不知道这个世界有多大，一旦你知道了，你就超出了它。',
                        style: TextStyle(
                            fontSize: 16, height: 1.125, color: Colors.white, decoration: TextDecoration.underline),
                      ),
                    ))
              ],
            )
          ],
        )));
  }
}
