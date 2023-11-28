import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:readingclub/app/modules/page/book/controller/book_controller.dart';

class BookBinding extends Bindings {
  @override
  void dependencies() {
    print("@@@@@@@@111111111");
    Get.put<BookController>(BookController());
  }
}
