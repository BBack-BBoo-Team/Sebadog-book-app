import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:readingclub/app/modules/routes/app_pages.dart';

class TabsController extends GetxController{
  RxInt selectIndex = 0.obs;
  late GetDelegate rootDelegate;

  void onTap(int value, GetDelegate delegate) {
    rootDelegate = delegate;
    switch (value) {
      case 0:
        delegate.toNamed(Routes.HOME);
        print('SELECT_HOME');
        break;
      case 1:
        delegate.toNamed(Routes.BOOK);
        print('SELECT_BOOK');
        break;
      case 2:
        delegate.toNamed(Routes.MYPAGE);
        print('SELECT_MY PAGE');
        break;
      default:
    }
  }

  void checkCurrentLocation(GetNavConfig? currentRoute) {
    final currentLocation = currentRoute?.location;
    selectIndex.value = 0;
    if (currentLocation?.startsWith(Routes.BOOK) == true) {
      selectIndex.value = 1;
    }
    if (currentLocation?.startsWith(Routes.MYPAGE) == true) {
      selectIndex.value = 2;
    }

  }

  double getBottomPadding() {
    double height = 56 + MediaQuery.of(Get.context!).padding.bottom;

    if (height > 80) {
      return 80;
    } else if (height < 60) {
      return 60;
    }
    return height;
  }


}