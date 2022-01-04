import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/pizzaprice.dart';
import 'package:untitled/style/text_style.dart';

class CheckPizzabox extends StatefulWidget {
  const CheckPizzabox({Key? key}) : super(key: key);

  @override
  _CheckPizzaboxState createState() => _CheckPizzaboxState();
}

int ostr = 1;
enum Addsa { ostr, kostr, chize }

class _CheckPizzaboxState extends State<CheckPizzabox> {
  Addsa _add = Addsa.ostr;

  @override
  Widget build(BuildContext context) {
    PizzaPice result = Provider.of<PizzaPice>(context);
    return Column(
      children: [
        ListTile(
          title: const Text(
            "Острый",
            style: AppTextStyle.titleCalcRadio,
          ),
          trailing: Radio<Addsa>(
            activeColor: Colors.green,
            value: Addsa.ostr,
            groupValue: _add,
            onChanged: (Addsa? value) {
              setState(() {
                _add = value!;
                result.Sousd(_add);
              });
            },
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          title: const Text(
            "Кисло-сладкий",
            style: AppTextStyle.titleCalcRadio,
          ),
          trailing: Radio<Addsa>(
            activeColor: Colors.green,
            value: Addsa.kostr,
            groupValue: _add,
            onChanged: (Addsa? value) {
              setState(() {
                _add = value!;
                result.Sousd(_add);
              });
            },
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          title: const Text(
            "Сырный",
            style: AppTextStyle.titleCalcRadio,
          ),
          trailing: Radio<Addsa>(
            activeColor: Colors.green,
            value: Addsa.chize,
            groupValue: _add,
            onChanged: (Addsa? value) {
              setState(() {
                _add = value!;
                result.Sousd(_add);
              });
            },
          ),
        ),
      ],
    );
  }
}
