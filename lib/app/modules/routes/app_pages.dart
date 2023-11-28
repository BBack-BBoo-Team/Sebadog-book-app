import 'package:get/get.dart';
import 'package:readingclub/app/modules/mypage/binding/mypage_binding.dart';
import 'package:readingclub/app/modules/mypage/view/mypage_view.dart';
import 'package:readingclub/app/modules/page/book/binding/book_binding.dart';
import 'package:readingclub/app/modules/page/book/view/book_view.dart';
import 'package:readingclub/app/modules/page/home/binding/home_binding.dart';
import 'package:readingclub/app/modules/page/home/view/home_view.dart';
import 'package:readingclub/app/modules/root/bindings/root_binding.dart';
import 'package:readingclub/app/modules/root/view/root_view.dart';

import 'package:readingclub/app/modules/tab/view/tabs_view.dart';

// 다른 페이지에서 함수 가져올 때 & 두가지 방법중 하나로 가져 올 수 있는데 위에 방식으로 가져오기
// 이유 = 정확히 어디서 가져왔는지 알아야 나중에 찾기 편함
import 'package:readingclub/app/modules/tab/binding/tabs_binding.dart';
import '../../test_view.dart';
import '../tab/binding/tabs_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TAB;

  static final routes = [
    GetPage(
      name: '/', // 여기는 원래 _Paths.ROOT
      page: () => const RootView(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          preventDuplicates: true,
          name: '/tab',
          page: () => const TabsView(),
          bindings: [
            TabsBinding(),
          ],
          title: null,
          children: [
            ///홈
            GetPage(
                name: '/home',
                page: () => const HomeView(),
                title: 'Home',
                binding: HomeBinding(),
                transition: Transition.fadeIn
            ),
            /// 책
            GetPage(
                name: '/book',
                page: () => const BookView(),
                title: 'Book',
                binding: BookBinding(),
                transition: Transition.fadeIn
            ),
            /// 마이 페이지
            GetPage(
                name: '/my_page',
                page: () => const MyPageView(),
                title: 'MyPage',
                binding: MyPageBinding(),
                transition: Transition.fadeIn
            ),
          ],
        ),
      ],
    ),
  ];
}
