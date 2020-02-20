import 'package:color_ui/view/ncp/model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './ncp/overview.dart';
// Provider 状态管理指南篇 https://juejin.im/post/5d00a84fe51d455a2f22023f

class NCP extends StatefulWidget {
  @override
  _NCP createState() {
    return _NCP();
  }
}

class _NCP extends State<NCP> with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  Map<String, dynamic> timeline = {}; // 时间线
  Map<dynamic, dynamic> statistics = {}; // 时间线
  TabController tabController;

  @override
  void initState() {
    // 当插入渲染树的时候调用只调用一次
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
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
    tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // https://juejin.im/post/5d00a84fe51d455a2f22023f#heading-18
    return ChangeNotifierProvider.value(
      value: Model(),
      child: Scaffold(
          appBar: AppBar(title: Text('疫情动态')),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Overview(), // 概览
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xFFe3e6eb),
                  ),
                  child: PhysicalModel(
                    // 圆角裁剪
                    color: Color(0xFFe3e6eb),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    clipBehavior: Clip.antiAlias,
                    child: TabBar(
                      controller: tabController,
                      labelColor: Colors.red,
                      // 选中文字颜色
                      unselectedLabelColor: Colors.amber,
                      // 未选中文字颜色
                      labelStyle: TextStyle(color: Colors.brown, fontSize: 20),
                      labelPadding: EdgeInsets.all(2),
                      // 标签的样式
                      indicatorColor: Colors.green,
                      // 下划线颜色
                      indicatorSize: TabBarIndicatorSize.label,
                      // 下划线类型
                      indicatorWeight: 2,
                      // 下划线宽度
                      tabs: <Widget>[
                        Tab(
                          text: '标签1',
                        ),
                        Tab(
                          text: '标签2',
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TabBarView(
                    controller: tabController,
                    children: <Widget>[
                      Container(
                        height: 300,
                        constraints: BoxConstraints(
                          maxHeight: 1,
                          maxWidth: 1
                        ),
                        decoration: BoxDecoration(
                          color: Colors.amber
                        ),
                      ),
                      Container(
                        height: 300,
                        constraints: BoxConstraints(
                          maxHeight: 1,
                          maxWidth: 1
                        ),
                        decoration: BoxDecoration(
                          color: Colors.cyan
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text('请稍后。。。。'),
                )
              ],
            ),
          )),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
