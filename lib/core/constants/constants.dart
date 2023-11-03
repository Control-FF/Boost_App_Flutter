import 'package:intl/intl.dart';

class Constants {
  static const String baseUrl = 'http://boost.bnewb.kr';

  static const timeout = Duration(seconds: 30);

  static const String tokenKey = 'Token';
  static const String searchTextKey = 'SearchText';
  static const String popupDate = 'PopupDate';

  static String numberAddComma(int number){
    return NumberFormat('###,###,###,###').format(number);
  }
}
