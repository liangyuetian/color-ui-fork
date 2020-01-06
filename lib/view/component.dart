import 'package:flutter/material.dart';

class Component extends StatefulWidget {
  @override
  _Component createState() {
    return _Component();
  }
}

class _Component extends State<Component> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Component');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('组件')),
      body: Center(
        child: Text('组件'),
      ),
    );
  }
}
