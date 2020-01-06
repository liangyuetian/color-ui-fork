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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('元素')),
      body: Center(
        child: Text('元素'),
      ),
    );
  }
}
