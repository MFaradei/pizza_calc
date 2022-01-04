import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:untitled/pizzaprice.dart';

class DiametrChiosePizza extends StatefulWidget {
  DiametrChiosePizza({Key? key}) : super(key: key);

  @override
  _DiametrChiosePizzaState createState() => _DiametrChiosePizzaState();
}

class _DiametrChiosePizzaState extends State<DiametrChiosePizza> {
  double _valSize = 350.0;
  @override
  Widget build(BuildContext context) {
    PizzaPice result = Provider.of<PizzaPice>(context);

    return Container(
      child: SfSlider(
          value: _valSize,
          min: 350,
          max: 450,
          interval: 20,
          stepSize: 20.0,
          showDividers: true,
          showLabels: true,
          enableTooltip: true,
          onChanged: (newValSize) {
            setState(() {
              _valSize = newValSize;
              result.sizepizzaD(_valSize);
            });
          }),
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  final _DiametrChiosePizzaState myState;

  MyInheritedWidget({Key? key, required Widget child, required this.myState})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return this.myState._valSize != oldWidget.myState._valSize;
  }

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }
}
