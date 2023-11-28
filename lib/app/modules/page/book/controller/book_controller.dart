import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:readingclub/models/book_model.dart';
import 'package:readingclub/repo/book_network_repository.dart';

class BookController extends GetxController {
  static BookController get to => Get.find();

  RxList<BookModel> bookListModel = <BookModel>[].obs;


  @override
  void onInit() async{
    await bookInit();
    super.onInit();
  }

  bookInit() async{
    // EasyLoading.show();
    bookListModel.value = await bookNetworkRepository.getBookModel();
    // EasyLoading.dismiss();
  }
}