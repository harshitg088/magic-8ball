import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
                backgroundColor: Colors.blue,
                elevation: 0,
                title: Center(child: Text("Ask Me Anything",style: TextStyle(fontSize: 28, letterSpacing: 2),),),
        ),
        body: HomePage(),
    ),
      );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
    child: FlatButton(

      child: Image.asset("images/ball$ballNumber.png"),
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
      },
    ),
    );
  }
}


