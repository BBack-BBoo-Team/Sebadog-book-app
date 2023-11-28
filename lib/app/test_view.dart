import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("asdasd"),
      ),
      body: ListView(
        children: [
        ],
      ),
    );
  }
}
