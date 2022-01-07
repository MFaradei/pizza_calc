/* import 'package:flutter/material.dart';
import 'package:untitled/loginpage.dart';

class Fist_boot extends StatefulWidget {
  Fist_boot({Key? key}) : super(key: key);

  @override
  _Fist_bootState createState() => _Fist_bootState();
}

class _Fist_bootState extends State<Fist_boot> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.addStatusListener((status) {
      Route route = MaterialPageRoute(builder: (context) => Login_page());
      Navigator.push(context, route);

      // dispose();
    });

    return RotationTransition(
      turns: _animation,
      child: Center(
        child: Container(
          width: 400,
          height: 400,
          child: Image.asset('assets/img/pizza.png'),
        ),
      ),
    );
  }
}
 */