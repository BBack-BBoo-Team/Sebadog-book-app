import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readingclub/app/modules/page/book/controller/book_controller.dart';

class BookView extends GetView<BookController> {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title:

        Text("Book"),
      ),
      body: Obx(() => Column(
        children: [
          Text("${controller.bookListModel[0].title}"),
          Image.network("${controller.bookListModel[0].image}"),
        ],
      ))
    );
  }
}