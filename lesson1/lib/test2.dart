import 'package:flutter/material.dart';

void main() {
  runApp(MyTestApp());
}

class MyTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: MyTestHomePage());
  }
}

class MyTestHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var quantityClick = 0;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is my Homepage'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('This is Page 2'),
          ElevatedButton(
              onPressed: () {
                quantityClick++;
                print('Clicked!$quantityClick');
              },
              child: const Text('Click me!'))
        ],
      )),
    );
  }
}
