import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black = fromHex('#000000');
  static Color black2 = fromHex('#404040');
  static Color white = fromHex('#FFFFFF');
  static Color primary = fromHex('#FFA653');
  static Color gray1 = fromHex('#BBBBBB');
  static Color gray2 = fromHex('#D9D9D9');
  static Color gray3 = fromHex('#C4C4C4');
  static Color gray4 = fromHex('#D0D0D0');
  static Color gray5 = fromHex('#575757');
  static Color gray6 = fromHex('#F2F2F2');
  static Color gray7 = fromHex('#AEAEAF');
  static Color gray8 = fromHex('#ABABAB');
  static Color gray9 = fromHex('#AAAAAA');
  static Color gray10 = fromHex('#CDC9C9');
  static Color gray11 = fromHex('#626262');
  static Color gray12 = fromHex('#808488');
  static Color gray13 = fromHex('#F7F7F7');
  static Color gray14 = fromHex('#E7E7E7');
  static Color gray15 = fromHex('#F3F3F3');
  static Color gray16 = fromHex('#F5F5F5');
  static Color blue1 = fromHex('#A6B4CD');
  static Color red = fromHex('#EE3F00');
  static Color green = fromHex('#52676A');


  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}