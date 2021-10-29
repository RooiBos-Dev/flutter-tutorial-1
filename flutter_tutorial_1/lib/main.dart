import 'package:random_color/random_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // TODO: Create button screen.
  // TODO: Implement colour changes on click. (Stateful widget)
  // TODO: Clear button.
  // Did rooibos-Dev enjoy his veggie pizza?

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RandomColor _randomColor = RandomColor();
  Color initialColor = Colors.orangeAccent;

  void _changeButtonColour() {
    Color _color = _randomColor.randomColor();
    setState(() {
      initialColor = _color;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(initialColor));

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tutorial 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: style,
              onPressed: () => _changeButtonColour(),
              child: const Text('Oracle'),
            ),
          ],
        ),
      ),
    );
  }
}
