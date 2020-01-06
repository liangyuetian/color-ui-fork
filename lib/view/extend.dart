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
    print('Extend');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('扩展')),
      body: Center(
        child: Text('扩展'),
      ),
    );
  }
}
