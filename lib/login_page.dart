import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: Signin(),
      ),
    );
  }
}

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool hidePassword = true;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Sign In",
              style: TextStyle(
                fontFamily: 'Cardo',
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 208.0),
            child: Text(
              "Username:",
              style: TextStyle(
                fontFamily: 'Cardo',
                color: Colors.black,
                fontSize: 25.0,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 340.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.email_outlined),
                  tooltip: 'Username Icon',
                  color: Colors.black,
                  iconSize: 28,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Username',
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 208.0),
            child: Text(
              "Password:",
              style: TextStyle(
                fontFamily: 'Cardo',
                color: Colors.black,
                fontSize: 25.0,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50.0,
            width: 340.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
            ),
            child: TextFormField(
              obscureText: hidePassword,
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
                prefixIcon: Icon(
                  Icons.lock_outlined,
                  color: Colors.black,
                ),
                suffixIcon: IconButton(
                  icon: hidePassword
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 190.0),
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                fontFamily: 'Cardo',
                color: Colors.black,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Checkbox(
                  activeColor: Colors.white,
                  checkColor: Colors.black,
                  value: this.value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                "Remember me",
                style: TextStyle(
                  fontFamily: 'Cardo',
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 134.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xFF39173F),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF39173F),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onPressed: null,
              child: Text(
                'Login',
                style: TextStyle(
                    fontFamily: 'Cardo',
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
