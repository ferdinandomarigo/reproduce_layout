import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEI - UNIPD',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'DEI - UNIPD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'via G. Gradenigo 6/B, 35131',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Padova (PD), Italy',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ], //children
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.black,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    const Text('CALL'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.directions,
                      color: Colors.black,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    const Text('DIRECTIONS'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.black,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    const Text('SHARE'),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.all(15), //apply padding to all four sides,
                  child: const Text(
                      'The Departments teaching and research activities primarily concern the area of Information Engineering, which includes the following disciplines: applied optics, bioengineering, computer science, electronics, operational research, systems and control theory, and telecommunications. The Department coordinates 9 first- and second-level degree programmes and a doctoral school, providing students with 15 laboratories (hosting over 150 workstations), free WiFi access, and an open-shelf library. Faculty (about 100) and research personnel (about 150, comprising graduate students, post-doctoral fellows and research associates) work in about 50 research groups and 45 research laboratories, with an impressive record of publications and collaborations with research institutions and companies worldwide. The Departments faculty comprises 6 IEEE Fellows.'),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.favorite_border_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
