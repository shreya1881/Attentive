import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class viewatt extends StatelessWidget {
  const viewatt({Key? key}) : super(key: key);
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
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 38, // Changing Drawer Icon Size
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ); //IconButton
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
        body: viewattendance(),
      ),
    );
  }
}

class viewattendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Table(
            defaultColumnWidth: FixedColumnWidth(120.0),
            border: TableBorder.all(
                color: Colors.black, style: BorderStyle.solid, width: 2),
            children: [
              TableRow(children: [
                Column(children: [
                  Text(
                    'Reg',
                    semanticsLabel: 'No',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Cardo',
                    ),
                  ),
                ]),
                Column(children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Cardo',
                    ),
                  ),
                ]),
                Center(
                  child: Column(children: [
                    Text(
                      'Attendance percantage',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    ),
                  ]),
                ),
              ]),
              TableRow(children: [
                Column(children: [
                  Text(
                    '001',
                    style: TextStyle(fontFamily: 'Cardo', fontSize: 20.0),
                  )
                ]),
                Column(
                  children: [
                    Text(
                      'Syrus Neil',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '102',
                      style: TextStyle(
                        fontFamily: 'Cardo',
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ]),
              TableRow(children: [
                Column(
                  children: [
                    Text(
                      '009',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Aashna J',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '100',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
              ]),
              TableRow(children: [
                Column(
                  children: [
                    Text(
                      '010',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Sonal Shabir',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '98.2',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
              ]),
              TableRow(children: [
                Column(
                  children: [
                    Text(
                      '013',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Prakhar S',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '100',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
              ]),
              TableRow(children: [
                Column(
                  children: [
                    Text(
                      '018',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Pratyush Vats',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '100',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
              ]),
              TableRow(children: [
                Column(
                  children: [
                    Text(
                      '033',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Shreya Dutta',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '100',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Cardo',
                      ),
                    )
                  ],
                ),
              ]),
            ],
          ),
        )
      ],
    ));
  }
}
