import 'dart:ui';

import 'package:flutter/material.dart';
import 'login_page.dart';

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
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                width: 274.0,
                height: 171.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFF39173F),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'images/teacher.png',
                        height: 100.0,
                        width: 106.0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Teacher',
                      style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 30.0,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                width: 274.0,
                height: 171.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFF39173F),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'images/student.png',
                        height: 100.0,
                        width: 106.0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Student',
                      style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 30.0,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
