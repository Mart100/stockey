import 'package:flutter/material.dart';
import 'package:stockey/services/tag.dart';
import 'package:stockey/services/training.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stockey',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Stockey'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<Training> trainings = [
    Training(
      title: 'hoi 1',
      subtitle: 'hallo 1',
      tags: [
        Tag(title: 'verdediging', icon: Icon(Icons.accessible_forward)),
        Tag(title: '5 spelers', icon: Icon(Icons.group)),
      ],
    ),
    new Training(
      title: 'hoi 2',
      subtitle: 'hallo 2',
      tags: [
        Tag(title: 'verdediging', icon: Icon(Icons.accessible_forward)),
        Tag(title: '3 spelers', icon: Icon(Icons.group)),
      ],
    ),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: trainings.length,
        itemBuilder: (context, index) {
          Training training = trainings[index];

          return training.getWidget();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hoi');

          setState(() {
            trainings.add(
              Training(
                title: "newTraining",
                subtitle: "bababoey",
              ),
            );
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
