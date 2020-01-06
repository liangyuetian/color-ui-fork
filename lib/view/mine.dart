import 'package:flutter/material.dart';

class Mine extends StatefulWidget {
  @override
  _Mine createState() {
    return _Mine();
  }
}

class _Mine extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('我的')
      ),
      body: Center(
        child: Text('我的'),
      ),
    );
  }
}