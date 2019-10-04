

import 'package:flutter/foundation.dart';


class CalcProvider with ChangeNotifier{

  int _kg = 40;
  get kg => _kg;


void increment(){
_kg++;
notifyListeners();
}
void decrement(){
  _kg--;
  notifyListeners();
}
}