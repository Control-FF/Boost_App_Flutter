import 'package:intl/intl.dart';

class Constants {
  static const String baseUrl = 'http://boost.bnewb.kr';
  static const String fileUrl = 'http://49.247.159.170/data/item/';

  static const timeout = Duration(seconds: 30);

  static const String tokenKey = 'Token';
  static const String searchTextKey = 'SearchText';
  static const String popupDate = 'PopupDate';

  static String numberAddComma(int number){
    return NumberFormat('###,###,###,###').format(number);
  }

  static String doubleAddComma(double number){
    return NumberFormat('###,###,###,###.####').format(number);
  }

  static String getToday(){
    DateTime now = DateTime.now();
    DateFormat format = DateFormat('yyyy년 MM월 dd일');
    return format.format(now);
  }

  static String getMaskingCard(String cardNumber){
    String maskingCard = '';

    List<String> card = cardNumber.split("-");

    for(int i=0; i<card.length; i++){
      if(i == card.length-1){
        maskingCard += card[i];
        continue;
      }else{
        for(int j=0; j<card[i].length; j++){
          maskingCard += '*';
        }
      }
      maskingCard += '-';
    }

    return maskingCard;
  }
}
