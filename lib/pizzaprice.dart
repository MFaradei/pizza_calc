import 'dart:core';

import 'package:flutter/material.dart';

import 'checkpizza.dart';

class PizzaPice extends ChangeNotifier {
  int testo = 100;

  void Testoo(bool i) {
    if (i) {
      testo = 100;
      print(' to: $testo');
    } else {
      testo = 200;
      print(' to: $testo');
    }
    notifyListeners();
  }

  int chisse = 100;
  void chissee(bool i) {
    if (i) {
      chisse = 200;
    } else {
      chisse = 100;
    }
    print(chisse);
    notifyListeners();
  }

  var _sizepizza = 350;
  void sizepizzaD(i) {
    int r = i.toInt();
    _sizepizza = r;
    notifyListeners();
    print(r);
  }

  int get sizepizza => _sizepizza;

  int sous = 100;
  void Sousd(Addsa i) {
    switch (i) {
      case Addsa.ostr:
        {
          sous = 100;
        }
        break;
      case Addsa.kostr:
        {
          sous = 200;
        }
        break;
      case Addsa.chize:
        {
          sous = 300;
        }
        break;
    }
    notifyListeners();
    print(sous);
  }

  late int _rezult;
  int rezultt() {
    _rezult = testo + chisse + sizepizza + sous;
    notifyListeners();
    return _rezult;
  }

  get rezult => rezultt();
}
