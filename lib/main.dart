import 'package:flutter/material.dart';
import 'package:flutter_built_value/runner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Built Value'),
        ),
        body: Center(
          child: Container(
            child: Text('Vehicle'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => Runner.runCode(),
        ),
      ),
    );
  }
}
