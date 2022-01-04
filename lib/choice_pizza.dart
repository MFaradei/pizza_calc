import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:get/get.dart';

import 'package:provider/provider.dart';
//import 'package:toggle_switch/toggle_switch.dart';
import 'package:untitled/checkpizza.dart';
import 'package:untitled/diamsliderpizza.dart';
import 'package:untitled/pizzaprice.dart';
import 'package:untitled/slide.dart';
import 'package:untitled/style/text_style.dart';

class ChoicaPizza extends StatefulWidget {
  const ChoicaPizza({Key? key}) : super(key: key);

  @override
  _ChoicaPizzaState createState() => _ChoicaPizzaState();
}

class _ChoicaPizzaState extends State<ChoicaPizza> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiProvider(
      providers: [ChangeNotifierProvider<PizzaPice>.value(value: PizzaPice())],
      child: Scaffold(
        body: Stack(children: [
          Positioned(top: -150, right: -80, child: Pizza()),
          ChoiceFormPizza(),
        ]),
      ),
    ));
  }
}

class ChoiceFormPizza extends StatefulWidget {
  const ChoiceFormPizza({Key? key}) : super(key: key);

  @override
  _ChoiceFormPizzaState createState() => _ChoiceFormPizzaState();
}

class _ChoiceFormPizzaState extends State<ChoiceFormPizza> {
  bool _addCheese = false;

  @override
  Widget build(BuildContext context) {
    PizzaPice result = Provider.of<PizzaPice>(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text('Калькулятор пиццы', style: AppTextStyle.titleCalc),
            const SizedBox(
              height: 10,
            ),
            const Text('Выберите параметры:', style: AppTextStyle.titleCalcMin),
            const SizedBox(
              height: 25,
            ),
            ToggleSwitchParmDough(),
            const SizedBox(
              height: 19,
            ),
            Container(
              child: const Text(
                "Размер, cm:",
                style: AppTextStyle.titleCalcParm,
              ),
              alignment: Alignment.bottomLeft,
              // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            ),
            DiametrChiosePizza(),
            SizedBox(
              height: 10,
            ),
            Container(
              child: const Text(
                "Соус:",
                style: AppTextStyle.titleCalcParm,
              ),
              alignment: Alignment.bottomLeft,
              // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            ),
            CheckPizzabox(),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 56,
              width: 360,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ListTile(
                leading: Text(
                  '\u{1F9C0}',
                  style: TextStyle(fontSize: 35),
                ),
                title: Text(
                  "Дополнительный сыр",
                ),
                trailing: Switch(
                    value: _addCheese,
                    onChanged: (bool newaddCheese) {
                      setState(() {
                        _addCheese = newaddCheese;
                        result.chissee(_addCheese);
                      });
                    }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Стоимость',
                textAlign: TextAlign.center,
                style: AppTextStyle.titleCalcParm,
              ),
            ),
            Container(
              height: 56,
              width: 360,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              alignment: Alignment.center,
              child: Text('${result.rezult} у.е.'),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Fluttertoast.showToast(msg: "Не сегодня");
                      },
                      child: const Text(
                        'Заказать',
                        style: TextStyle(fontFamily: 'Roboto', fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Pizza extends StatefulWidget {
  const Pizza({Key? key}) : super(key: key);

  @override
  _PizzaState createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    //double diametr = 350;
    PizzaPice result = Provider.of<PizzaPice>(context);
    double diametr = result.sizepizza.toDouble();
    return SizedBox(
      width: diametr,
      height: diametr,
      child: Image.asset('assets/img/pizza.png'),
    );
  }
}
