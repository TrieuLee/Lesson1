import 'package:flutter/material.dart';

void main() {
  runApp(MyTestAppReview());
}

class MyTestAppReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: MyTestHomePageReview());
  }

}

class MyTestHomePageReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var quantityClick = 0;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('This is my Home page 3'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("This is body of Page 3"),
              ElevatedButton(onPressed: () {
                quantityClick++;
                print('Clicked$quantityClick');
              }, child: const Text('click me,please!'))
            ],
          ),
        )
    );
  }

}