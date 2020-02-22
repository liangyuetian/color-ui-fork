import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:color_ui/utils/get_JSON.dart';
import 'package:color_ui/api/api_url.dart';
import 'package:color_ui/view/ncp/model.dart';

import 'incr.dart';

// 数据概览

class Overview extends StatefulWidget {
  @override
  _Overview createState() => _Overview();
}

class _Overview extends State {
  Map<String, dynamic> overview = {}; // 概览

  num seriousCount = 8030;

  num currentConfirmedCount = 52443; // 当前总确诊
  num confirmedCount = 59901; // 总确诊

  num currentConfirmedIncr = 13571; // 当前较昨日确诊
  num confirmedIncr = 15171; // 较昨日确诊

  num suspectedCount = 13435; // 总疑似
  num suspectedIncr = 2807; // 较昨日疑似

  num deadCount = 1368; // // 总死亡人数
  num deadIncr = 254; // 较昨日死亡人数

  num curedCount = 6090; // 总治愈
  num curedIncr = 1346; // 较昨日治愈

  List<Map<String, dynamic>> statistics = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getJSON(API.overviewUrl).then((onValue) {
      setState(() {
        var result = onValue['results'][0] ?? Map();
        currentConfirmedCount = result['currentConfirmedCount'] ?? 0; // 当前总确诊
        confirmedCount = result['confirmedCount'] ?? 0; // 总确诊

        currentConfirmedIncr = result['currentConfirmedIncr'] ?? 0; // 当前较昨日确诊
        confirmedIncr = result['confirmedIncr'] ?? 0; // 较昨日确诊

        suspectedCount = result['suspectedCount'] ?? 0; // 总疑似
        suspectedIncr = result['suspectedIncr'] ?? 0; // 较昨日疑似

        curedCount = result['curedCount'] ?? 0; // 总治愈
        curedIncr = result['curedIncr'] ?? 0; // 较昨日治愈

        deadCount = result['deadCount'] ?? 0; // // 总死亡人数
        deadIncr = result['deadIncr'] ?? 0; // 较昨日死亡人数

        statistics = [
          {'title': '总确诊病例', 'count': confirmedCount, 'incr': confirmedIncr, 'color': 0xFFe83132},
          {'title': '疑似病例', 'count': suspectedCount, 'incr': suspectedIncr, 'color': 0xFFec9217},
          {'title': '治愈病例', 'count': curedCount, 'incr': curedIncr, 'color': 0xFF4d5054},
          {'title': '死亡病例', 'count': deadCount, 'incr': deadIncr, 'color': 0xFF10aeb5},
        ];
        Provider.of<Model>(context, listen: false).setStatistics(statistics);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.all(17),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color.fromRGBO(245, 246, 247, 1),
            borderRadius: BorderRadius.all(Radius.circular(8))
          ),
          child: Incr(),
        )
      ],
    );
    return Container(
      alignment: Alignment.topLeft,
      child: Incr(),
    );
  }
}
