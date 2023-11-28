import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:async/async.dart';

class SplashService extends GetxService {
  /// get.put으로 등록한 컨트롤러를 어디서든 접근할 수 있다. get.put을 먼저 사용해 컨트롤러를 등록해야 한다.
  static SplashService get to => Get.find();

  ///rebuild를 막아준다. 한번 호출된이후로는 원래 결과를 반환. 즉 rebuild를 계속하지 않는다.
  final memo = AsyncMemoizer<void>();
  Future<void> init() {
    return memo.runOnce(initFunction);
  }
  ///유저 정보 가져오기
  Future<void> initFunction() async {
  }
}