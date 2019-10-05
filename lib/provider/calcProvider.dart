import 'package:flutter/material.dart';
import 'package:bmicalc/Colors.dart';

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
  int selGender = 0;
  void changeColorStandard() {
    KselectedBackgroundColor = Colors.white;
    KselectedTextColor = Colors.black;
    KunselectedTextColor = Colors.white;
    KunselectedBackgroundColor = Color(0xFF5F786C);

    notifyListeners();
  }

  void changeColorMetric() {
    KselectedBackgroundColor = Color(0xFF5F786C);
    KselectedTextColor = Colors.white;
    KunselectedTextColor = Colors.black;
    KunselectedBackgroundColor = Colors.white;
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

  Color pMalebackGroundColor = Color(0xFF5F786C);
  Color pMaleIconColor = Color(0xFF375748);
  Color pMaleTextColor = Colors.black;
  Color pFemalebackGroundColor = Color(0xFF5F786C);
  Color pFemaleIconColor = Color(0xFF375748);
  Color pFemaleTextColor = Colors.black;

  void changeColorMale() {
    pMalebackGroundColor = Colors.white;
    pMaleIconColor = Color(0xFF375748);
    pMaleTextColor = Colors.black;
    pFemalebackGroundColor = Color(0xFF5F786C);
    pFemaleIconColor = Color(0xFF375748);
    pFemaleTextColor = Colors.black;
    notifyListeners();
  }

  void changeColorFemale() {
    pMalebackGroundColor = Color(0xFF5F786C);
    pMaleIconColor = Color(0xFF375748);
    pMaleTextColor = Colors.black;
    pFemalebackGroundColor = Colors.white;
    pFemaleIconColor = Color(0xFF375748);
    pFemaleTextColor = Colors.black;
    notifyListeners();
  }

  String finalResult = "";
  void calculateBmi(
      {int unitVal, int genVal, int age, double height, double weight}) {
    if (unitVal == 2) {
      finalResult = ((weight / height / height) * 10000).toStringAsFixed(1);
    } else {
      double calcHeight = (height * 12);
      print(calcHeight);
      finalResult =
          (703 * weight / (calcHeight * calcHeight)).toStringAsFixed(1);
    }
    if (double.parse(finalResult) < 16) {
      first = Colors.greenAccent;
      second = Color(0xFF5F786C);
      third = Color(0xFF5F786C);
      fourth = Color(0xFF5F786C);
      fifth = Color(0xFF5F786C);
      sixth = Color(0xFF5F786C);
      seventh = Color(0xFF5F786C);
      eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) >= 16 &&
        double.parse(finalResult) <= 17) {
      first = Color(0xFF5F786C);
      second = Colors.greenAccent;
      third = Color(0xFF5F786C);
      fourth = Color(0xFF5F786C);
      fifth = Color(0xFF5F786C);
      sixth = Color(0xFF5F786C);
      seventh = Color(0xFF5F786C);
      eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) > 17 &&
        double.parse(finalResult) < 18.5) {
      first = Color(0xFF5F786C);
      second = Color(0xFF5F786C);
      third = Colors.greenAccent;
      fourth = Color(0xFF5F786C);
      fifth = Color(0xFF5F786C);
      sixth = Color(0xFF5F786C);
      seventh = Color(0xFF5F786C);
      eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) >= 18.5 &&
        double.parse(finalResult) < 25) {
      first = Color(0xFF5F786C);
      second = Color(0xFF5F786C);
      third = Color(0xFF5F786C);
      fourth = Colors.greenAccent;
      fifth = Color(0xFF5F786C);
      sixth = Color(0xFF5F786C);
      seventh = Color(0xFF5F786C);
      eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) >= 25 &&
        double.parse(finalResult) < 30) {
      first = Color(0xFF5F786C);
      second = Color(0xFF5F786C);
      third = Color(0xFF5F786C);
      fourth = Color(0xFF5F786C);
      fifth = Colors.greenAccent;
      sixth = Color(0xFF5F786C);
      seventh = Color(0xFF5F786C);
      eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) >= 30 &&
        double.parse(finalResult) < 35) {
      first = Color(0xFF5F786C);
      second = Color(0xFF5F786C);
      third = Color(0xFF5F786C);
      fourth = Color(0xFF5F786C);
      fifth = Color(0xFF5F786C);
      sixth = Colors.greenAccent;
      seventh = Color(0xFF5F786C);
      eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) >= 35 &&
        double.parse(finalResult) <= 40) {
      first = Color(0xFF5F786C);
      second = Color(0xFF5F786C);
      third = Color(0xFF5F786C);
      fourth = Color(0xFF5F786C);
      fifth = Color(0xFF5F786C);
      sixth = Color(0xFF5F786C);
      seventh = Colors.greenAccent;
      eighth = Color(0xFF5F786C);
    } else if (double.parse(finalResult) > 40) {
      first = Color(0xFF5F786C);
      second = Color(0xFF5F786C);
      third = Color(0xFF5F786C);
      fourth = Color(0xFF5F786C);
      fifth = Color(0xFF5F786C);
      sixth = Color(0xFF5F786C);
      seventh = Color(0xFF5F786C);
      eighth = Colors.greenAccent;
    }
  }
}
