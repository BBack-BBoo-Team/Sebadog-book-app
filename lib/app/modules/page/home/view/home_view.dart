import 'package:flutter/cupertino.dart';
import '../controller/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // controller.checkedCurrentVersion(context);
    // controller.checkedPhoneNumber(context);

    return  Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: ListView(
        children: [
        ],
      ),
    );
  }

}
