import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var number = 1;

  void inc(){
    int newNumber = number + 1;

    setState((){
      number = newNumber;
    });

    print("Number Pressed $number");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.black26,
          child: Row(
            children: [
              IconButton(onPressed: inc, icon: Icon(Icons.add_box_outlined)),
              Text("Number - $number")
            ],
          ),
        ),
      ),

      body: Container(
        width: 300,
        height: 300,
        alignment: Alignment.center,
        color: Colors.blue,
      ),
    );
  }
}