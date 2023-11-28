import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:readingclub/service/splash_service.dart';
import 'app/modules/page/book/controller/book_controller.dart';
import 'app/modules/routes/app_pages.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

void main() async {


  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 20.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = false
    ..dismissOnTap = false;

  WidgetsFlutterBinding.ensureInitialized();

  /// 파이어베이스 연동
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  runApp(
    GetMaterialApp.router(
      title: "Application",
      initialBinding: BindingsBuilder(
            () {
              Get.put(SplashService());
              Get.put(BookController());  // 시작할 때 불러와서 로딩이 빠름
        },
      ),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
      builder: EasyLoading.init(),
      getPages: AppPages.routes,
    ),
  );
}
