import 'dart:ui';

import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'package:attentive/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff665BE9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'images/Booklogo.png',
                  height: 40.0,
                  width: 30.0,
                )),
            Text(
              'ATTENTIVE',
              style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5.0,
                  fontFamily: 'Comfortaa',
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
