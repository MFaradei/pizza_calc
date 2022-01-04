import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:untitled/pizzaprice.dart';

class ToggleSwitchParmDough extends StatefulWidget {
  const ToggleSwitchParmDough({Key? key}) : super(key: key);

  @override
  _ToggleSwitchParmDoughState createState() => _ToggleSwitchParmDoughState();
}

class _ToggleSwitchParmDoughState extends State<ToggleSwitchParmDough> {
  int initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    PizzaPice result = Provider.of<PizzaPice>(context);
    late bool bb;
    void bbb() {
      result.Testoo(bb);
    }

    return Container(
      child: ToggleSwitch(
        minWidth: 170.0,
        cornerRadius: 20.0,
        activeBgColors: [
          [Colors.blue[800]!],
          [Colors.blue[800]!]
        ],
        activeFgColor: Colors.white,
        inactiveBgColor: Colors.grey[300],
        inactiveFgColor: Colors.grey[800],
        fontSize: 16,
        initialLabelIndex: initialIndex,
        totalSwitches: 2,
        labels: ['Обычное тесто', 'Тонкое тесто'],
        radiusStyle: true,
        onToggle: (i) {
          setState(() {
            initialIndex = i;
          });
          if (i == 0) {
            bb = true;
          } else if (i == 1) {
            bb = false;
          }
          print(bb);
          bbb();
        },
      ),
    );
  }
}
