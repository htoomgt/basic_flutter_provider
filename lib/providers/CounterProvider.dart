import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{
  int _count = 0;

  int get count => this._count;


  void increment(){
    this._count++;
    notifyListeners();
  }

  void decrement(){
    this._count--;
    notifyListeners();
  }

  void reset(){
    this._count = 0;
    notifyListeners();
  }

}