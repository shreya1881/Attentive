import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
        backgroundColor: Color(0xFFC378FE).withOpacity(0.9),
        appBar: AppBar(
          title: Text(
            "ATTENTIVE",
            style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 4.0,
                fontFamily: 'Comfortaa',
                color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF50177C).withOpacity(0.81),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 38, // Changing Drawer Icon Size
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.info_rounded),
              tooltip: 'Info Icon',
              color: Colors.white,
              iconSize: 38,
              onPressed: () {},
            ),
          ], //
        ),
        body: LoginPage(),
      ),
    ),
  );
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Log In as",
          style: TextStyle(
            fontFamily: 'Cardo',
            color: Colors.black,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Card(
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          color: Color(0xFF39173F),
          child: Row(
            children: [
              Image.asset('images/teacher.png'),
              SizedBox(
                width: 10,
              ),
              Text(
                'Teacher',
                style: TextStyle(
                    fontFamily: 'Cardo', fontSize: 20.0, color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
