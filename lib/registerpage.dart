import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register_page extends StatefulWidget {
  const Register_page({Key? key}) : super(key: key);

  @override
  _Register_pageState createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
  bool _hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //padding: EdgeInsets.all(40.0),
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 23,
                        width: 23,
                        child: Image.asset('assets/img/people.png')),
                    Text(' Регистрация',
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w700,
                                height: 0.87,
                                letterSpacing: -0.01))),
                  ],
                ),
                Divider(
                  thickness: 1,
                  height: 15,
                ),
                Text(
                  'Чтобы зарегистрироваться введите\nсвой номер телефона и почту',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text('Телефон',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400,
                    ))),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 320,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintStyle: TextStyle(color: Colors.grey.shade500),
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
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Почта',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400))),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 320,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      hintText: '@',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(400)),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Вам придет четырехзначный код,\nкоторый будет вашим паролем',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Изменить пароль можно\nбудет в личном кабинете после\nрегистрации',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[400],
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
                          onPressed: () {},
                          child: const Text(
                            'Отправить код',
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 20),
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
        ),
      ),
    );
  }
}
