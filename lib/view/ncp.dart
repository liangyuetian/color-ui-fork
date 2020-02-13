import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';

class NCP extends StatefulWidget {
  @override
  _NCP createState() {
    return _NCP();
  }
}

class _NCP extends State<NCP> with AutomaticKeepAliveClientMixin {
  String base = 'http://49.232.173.220:3001';
  String url = 'https://file1.dxycdn.com/2020/0131/090/3394052471398860228-62.json';
  String timelineUrl = '/data/getTimelineService'; // 按时间线获取事件
  String statisticsServiceUrl = '/data/getStatisticsService'; // 按时间线获取事件
  Map<String, dynamic> responseBody = {};
  Map<String, dynamic> timeline = {}; // 时间线
  Map<dynamic, dynamic> statistics = {}; // 时间线

  _NCP() {
//    _getJSON(url).then((onValue) {
//      responseBody = onValue;
//    });
    _getJSON(base + statisticsServiceUrl).then((onValue) {
      setState(() {
        statistics = onValue;
      });
    });
  }

  Future _getJSON(url) async {
    var httpClient = HttpClient();
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    var s = json.decode(await response.transform(utf8.decoder).join());
    return new Map<dynamic, dynamic>.from(s);
    return json.decode(await response.transform(utf8.decoder).join());
  }

  @override
  void initState() {
    // 当插入渲染树的时候调用只调用一次
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // 紧跟initState之后调用
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(NCP oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // 在销毁之前调用
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // 销毁时调用
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: AppBar(title: Text('疫情动态')),
        body: Container(
//          decoration: BoxDecoration(color: Colors.red),
          child: Text(statistics['remark1'] ?? '请稍后。。。。'),
//          child: Text(statistics['remark1'] != null ? statistics['remark1'] : '请稍后。。。'),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
