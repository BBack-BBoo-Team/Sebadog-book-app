import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readingclub/app/modules/routes/app_pages.dart';

import '../../../../const/constants.dart';
import '../controller/tabs_controller.dart';


class TabsView extends GetView<TabsController> {
  const TabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        //This router outlet handles the appbar and the bottom navigation bar
        controller.checkCurrentLocation(currentRoute);
        return Obx(() => SafeArea(
          child: Scaffold(
            body: GetRouterOutlet(
              initialRoute: Routes.HOME,
              key: Get.nestedKey(Routes.TAB),
            ),
            bottomNavigationBar: Container(
              height: controller.getBottomPadding(),
              child: BottomNavigationBar(
                currentIndex: controller.selectIndex.value,
                backgroundColor: Colors.white,
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: Constants.defaultColor,
                unselectedItemColor: Constants.defaultLight,
                selectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                onTap: (value) {
                  controller.onTap(value, delegate);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.book),
                    label: 'Book',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_pin),
                    label: 'MyPage',
                  ),
                ],
              ),
            ),
          ),
        ));
      },
    );
  }
}