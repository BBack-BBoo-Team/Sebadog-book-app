import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controller/mypage_controller.dart';


class MyPageView extends GetView<MyPageController> {
  const MyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // controller.checkedCurrentVersion(context);
    // controller.checkedPhoneNumber(context);

    return  Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("MyPage"),
      ),
      body: ListView(
        children: [
        ],
      ),
    );
  }

}