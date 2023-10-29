import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            child: Text(
              "Succesfully! Login & Registered",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ));
  }
}
