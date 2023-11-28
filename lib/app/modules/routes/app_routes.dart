part of 'app_pages.dart';

abstract class Routes {
  /// 메인
  static const ROOT = _Paths.ROOT;
  /// 탭
  static const TAB = _Paths.TAB;

  /// 로그인
  static const LOGIN = _Paths.LOGIN; // 로그인
  static const SIGN_IN = _Paths.SIGN_IN;
  static const SIGN_UP = _Paths.SIGN_UP;

  /// 홈
  static const HOME = _Paths.TAB + _Paths.HOME;

  /// book
  static const BOOK = _Paths.TAB + _Paths.BOOK;

  /// 마이페이지
  static const MYPAGE = _Paths.TAB + _Paths.MYPAGE;
}


abstract class _Paths {
  static const ROOT = '/';
  static const TAB = '/tab';
  static const LOGIN = '/login';
  static const SIGN_IN = '/sign_in';
  static const SIGN_UP = '/sign_up';

  static const HOME = '/home';
  static const BOOK = '/book';
  static const MYPAGE = '/my_page';
}