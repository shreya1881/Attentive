import 'package:flutter/material.dart';
import 'view_att.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Teacher_screen extends StatelessWidget {
  const Teacher_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFC378FE),
        appBar: AppBar(
          title: Text(
            'ATTENTIVE',
            style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 4.0,
                fontFamily: 'Comfortaa',
                color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF50177C),
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
        body: TeachersScreen(),
      ),
    );
  }
}

class TeachersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Teacher",
              style: TextStyle(
                fontFamily: 'Cardo',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  width: 275.0,
                  height: 171.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF39173F),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'images/attendancemark.png',
                          height: 90.0,
                          width: 89.0,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Take',
                            style: TextStyle(
                              fontFamily: 'Cardo',
                              fontSize: 27.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Attendance',
                            style: TextStyle(
                              fontFamily: 'Cardo',
                              fontSize: 27.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  width: 275.0,
                  height: 171.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF39173F),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'images/viewattendance.png',
                          height: 90.0,
                          width: 89.0,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'View',
                            style: TextStyle(
                              fontFamily: 'Cardo',
                              fontSize: 27.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Attendance',
                            style: TextStyle(
                              fontFamily: 'Cardo',
                              fontSize: 27.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => viewatt()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
