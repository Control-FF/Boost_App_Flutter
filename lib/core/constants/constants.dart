import 'package:intl/intl.dart';
import 'package:html/parser.dart';

class Constants {
  static const String baseUrl = 'http://boost.bnewb.kr';
  static const String fileUrl = 'http://49.247.159.170/data/item/';

  static const timeout = Duration(seconds: 30);

  static const String tokenKey = 'Token';
  static const String userName = 'Name';
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

  static String parseHtmlString(String htmlString) {
    htmlString = htmlString.replaceAll('</p>', '\n');
    final document = parse(htmlString);
    final String parsedString = parse(document.body!.text).documentElement!.text;

    return parsedString;
  }

  static int getPercent(int salePrice, int originPrice){
    return 100 - ((salePrice.toDouble() / originPrice.toDouble()) * 100).toInt();
  }

  static int diffDate(String date1){
    var _toDay = DateTime.now();

    int difference = int.parse(
        _toDay.difference(DateTime.parse(date1)).inDays.toString());
    print('diffDay : $difference');

    return difference;
  }

}
