import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:untitled/choice_pizza.dart';
import 'package:untitled/registerpage.dart';
import 'package:untitled/style/text_style.dart';

GlobalKey globalKey = GlobalKey();

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  bool _hidePass = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: globalKey,
        body: Form(
          child: ListView(
            padding: EdgeInsets.all(40.0),
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: Image.asset(
                  'assets/img/bird.png',
                  height: 110,
                  width: 140,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Введите логин в виде 10 цифр \n номера телефона',
                textAlign: TextAlign.center,
                style: AppTextStyle.title,
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintStyle: AppTextStyle.prompt,
                  hintText: '+7',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(400)),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                obscureText: _hidePass,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintStyle: AppTextStyle.prompt,
                  hintText: '******',
                  suffixIcon: IconButton(
                    icon: Icon(
                        _hidePass ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _hidePass = !_hidePass;
                      });
                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(400)),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                ),
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
                          Route route = MaterialPageRoute(
                              builder: (context) => ChoicaPizza());
                          Navigator.push(context, route);
                        },
                        child: const Text(
                          'Войти',
                          style: AppTextStyle.button,
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
              const SizedBox(
                height: 65,
              ),
              Center(
                  child: TextButton(
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Register_page());
                  Navigator.push(context, route);
                },
                child: const Text(
                  'Регистрация',
                  style: AppTextStyle.textLink,
                ),
              )),

              Center(
                  child: TextButton(
                onPressed: () {
                  Fluttertoast.showToast(msg: "Тогда не судьба");
                },
                child: const Text(
                  'Забыли пароль?',
                  style: AppTextStyle.textLink,
                ),
              )),
              // child: Text(
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
