import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
