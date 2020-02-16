import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Model with ChangeNotifier {
  List<Map<String, dynamic>> statistics = [];

  setStatistics(List<Map<String, dynamic>> list) {
    statistics = list;
    notifyListeners(); // 通知刷新 Widget
  }
}