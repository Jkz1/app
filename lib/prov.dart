import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Prov with ChangeNotifier{
  int? _taskStatus = null;

  int? get taskStatus => _taskStatus;

  set settaskStatus(val){
    _taskStatus = val;
    notifyListeners();
  }
}