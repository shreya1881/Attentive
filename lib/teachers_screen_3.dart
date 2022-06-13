import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFC378FE),
        appBar: AppBar(
          title: const Center(child: Text('ATTENTIVE')),
          backgroundColor: Color(0xFF50177C),
        ),
        body: TeachersScreen(),
      ),
    ),
  );
}

class TeachersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Teacher",
          style: TextStyle(
            fontFamily: 'Cardo',
            fontSize: 40.0,
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
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xFF39173F),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('icons8-attendance-30(1).png',
                        height: 90.0,
                        width: 89.0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Text(
                      'Take Attendance',
                      style: TextStyle(
                        fontFamily: 'Cardo',
                        fontSize: 27.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

              ),


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
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xFF39173F),
                ),
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'attendance-mark.png',
                        height: 103.0,
                        width: 104.0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'View Attendance',
                      style: TextStyle(
                        fontFamily: 'Cardo',
                        fontSize: 27.0,
                        color: Colors.white,
                      ),
                    ),
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