import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1700), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: ((context) => Home()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Task Buddy',
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 52,
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 9, 2, 70),
                    Color.fromARGB(0xFF, 0x73, 0x03, 0xc0),
                    Color.fromARGB(0xFF, 0xec, 0x38, 0xbc),
                    //add more color here. #03001e, #7303c0, #ec38bc, #fdeff9
                  ],
                ).createShader(
                  Rect.fromLTWH(132.0, 100.0, 150.0, 0.0),
                ),
            ),
          ),
        ),
      ),
    );
  }
}
