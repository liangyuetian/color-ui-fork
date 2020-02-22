import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'model.dart';

// 数据概览
class Incr extends StatefulWidget {
  Incr();

  @override
  _Incr createState() {
    return _Incr();
  }
}

class _Incr extends State {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didUpdateWidget(StatefulWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('更新数据');
  }

  @override
  Widget build(BuildContext context) {
//    return Consumer( // 另一种写法
//      builder: (context, Model model, child) => Row(
//        children: model.statistics
//            .map((item) => IncrItem(
//          title: item['title'],
//          color: item['color'],
//          incr: item['incr'],
//          count: item['count'],
//        ))
//            .toList(),
//      ),
//    );
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: Provider.of<Model>(context, listen: false)
          .statistics
          .map((item) => Expanded(
                flex: 1,
                child: IncrItem(
                  title: item['title'],
                  color: item['color'],
                  incr: item['incr'],
                  count: item['count'],
                ),
              ))
          .toList(),
    );
  }
}

class IncrItem extends StatelessWidget {
  final num count; // 总
  final num incr; // 较昨日
  final int color; // 颜色
  final String title;

  IncrItem({this.count, this.incr, this.color, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count.toString(),
          style: TextStyle(color: Color(color), fontWeight: FontWeight.w700, fontSize: 20),
        ),
        Text(
          title,
          style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1), fontSize: 15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '昨日+',
              style: TextStyle(color: Color.fromRGBO(153, 153, 153, 1), fontSize: 12),
            ),
            Text(
              incr.toString(),
              style: TextStyle(color: Color(color), fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}

Widget generateIncr(count, incr, color, title) {
  return Expanded(
    flex: 1,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count.toString(),
          style: TextStyle(color: Color(color), fontWeight: FontWeight.w700, fontSize: 20),
        ),
        Text(
          title,
          style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1), fontSize: 15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '昨日+',
              style: TextStyle(color: Color.fromRGBO(153, 153, 153, 1), fontSize: 12),
            ),
            Text(
              incr.toString(),
              style: TextStyle(color: Color(color), fontSize: 12),
            ),
          ],
        ),
      ],
    ),
  );
}
