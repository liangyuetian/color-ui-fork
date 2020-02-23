import 'package:flutter/material.dart';

class Component extends StatefulWidget {
  @override
  _Component createState() {
    return _Component();
  }
}

class _Component extends State<Component> with AutomaticKeepAliveClientMixin {
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
  void didUpdateWidget(Component oldWidget) {
    // 当组件状态改变的时候调用，比如调用了setState
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
        appBar: AppBar(title: Text('组件')),
        body: Stack(
          children: <Widget>[
            Listener(
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(Size(300.0, 200.0)),
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.blue),
                  position: DecorationPosition.background, // foreground 前景色
                ),
              ),
              onPointerDown: (event) => print("down0"),
            ),
            Listener(
              child: Container(
//                decoration: BoxDecoration(color: Colors.red),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(200.0, 100.0)),
                  child: Center(child: Text("左上角200*100范围内非文本区域点击", style: TextStyle(color: Colors.white),)),
                ),
              ),
              onPointerDown: (event) => print("down1"),
              behavior: HitTestBehavior.translucent, // 当背景是透明时，可以点击到下方元素的事件 放开此行注释后可以"点透"
            )
          ],
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
