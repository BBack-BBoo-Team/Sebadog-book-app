import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/nav2/router_outlet.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:readingclub/app/modules/routes/app_pages.dart';

import '../../../../service/splash_service.dart';
import '../../splash/splash_view.dart';
import '../controller/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        return FutureBuilder(
            future: SplashService.to.init(),
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                return Scaffold(
                  body: GetRouterOutlet(
                    initialRoute: Routes.TAB
                  ),
                );
              }
              return const SplashView();
            });
      },
    );
  }
}