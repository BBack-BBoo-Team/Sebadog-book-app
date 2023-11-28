import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        // backgroundColor: Colors.red,
        body: Center(
          child: Icon(Icons.book)
        ));
  }
}