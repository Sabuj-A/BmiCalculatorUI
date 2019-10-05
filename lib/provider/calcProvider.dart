import 'package:flutter/material.dart';

class CalcProvider with ChangeNotifier {
  double _weight = 145.0;
  get weight => _weight;
  double _height = 5.6;
  get height => _height;
  int _age = 25;
  get age => _age;
  double incdecby = 0.1;
  String heightVal = "5.6";
  int selVal = 1;

  void weightIncrement() {
    _weight++;
    notifyListeners();
  }

  void weightDecrement() {
    _weight--;
    notifyListeners();
  }

  void heightIncrement() {
    _height = _height + incdecby;
    heightVal = _height.toStringAsFixed(1);
    notifyListeners();
  }

  void heightDecrement() {
    _height = _height - incdecby;
    heightVal = _height.toStringAsFixed(1);
    notifyListeners();
  }

  void ageIncrement() {
    _age++;
    notifyListeners();
  }

  void ageDecrement() {
    _age--;
    notifyListeners();
  }

  Color KselectedBackgroundColor = Colors.white;
  Color KselectedTextColor = Colors.black;
  Color KunselectedBackgroundColor = Color(0xFF5F786C);
  Color KunselectedTextColor = Colors.white;
  int selUnit = 1;
  int selGender = 1;
  void changeColorStandard() {
    selUnit = 1;
    KselectedBackgroundColor = Colors.white;
    KselectedTextColor = Colors.black;
    KunselectedTextColor = Colors.white;
    KunselectedBackgroundColor = Color(0xFF5F786C);
    print('Standart pressed $selUnit');
    notifyListeners();
  }

  void changeColorMetric() {
    selUnit = 2;
    KselectedBackgroundColor = Color(0xFF5F786C);
    KselectedTextColor = Colors.white;
    KunselectedTextColor = Colors.black;
    KunselectedBackgroundColor = Colors.white;
    print('Metric pressed $selUnit');
    notifyListeners();
  }

  String weightUnit = 'Weight in pounds';
  String heightUnit = 'Height in feet+inches';

  void changeUnit() {
    if (selVal == 2) {
      weightUnit = 'Weight in kg';
      heightUnit = 'Height in cm';
    } else {
      weightUnit = 'Weight in pounds';
      heightUnit = 'Height in feet+inches';
    }
    notifyListeners();
  }

  void changeVal() {
    if (selVal == 2) {
      _weight = 66;
      _height = 171.0;
      incdecby = 1;
      heightVal = "171.0";
      incdecby = 1;
    } else {
      _weight = 145.0;
      _height = 5.6;
      heightVal = "5.6";
      incdecby = 0.1;
    }
    notifyListeners();
  }

  Color pselectedbackGroundColor = Colors.white;
  Color pselectedIconColor = Color(0xFF375748);
  Color pselectedTextColor = Colors.black;
  Color pUnselectedbackGroundColor = Color(0xFF5F786C);
  Color pUnselectedIconColor = Color(0xFF375748);
  Color pUnselectedTextColor = Colors.white;

void changeColorMale(){
 pselectedbackGroundColor = Colors.white;
   pselectedIconColor = Color(0xFF375748);
   pselectedTextColor = Colors.black;
   pUnselectedbackGroundColor = Color(0xFF5F786C);
   pUnselectedIconColor = Color(0xFF375748);
   pUnselectedTextColor = Colors.white;
   notifyListeners();
}
void changeColorFemale(){
 pselectedbackGroundColor = Color(0xFF5F786C);
   pselectedIconColor = Color(0xFF375748);
   pselectedTextColor = Colors.white;
   pUnselectedbackGroundColor = Colors.white;
   pUnselectedIconColor = Color(0xFF375748);
   pUnselectedTextColor = Colors.black;
   notifyListeners();
}

}
