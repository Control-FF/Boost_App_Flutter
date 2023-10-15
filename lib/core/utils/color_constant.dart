import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black = fromHex('#000000');
  static Color white = fromHex('#FFFFFF');
  static Color primary = fromHex('#3A3390');
  static Color gray1 = fromHex('#BBBBBB');
  static Color gray2 = fromHex('#D9D9D9');
  static Color gray3 = fromHex('#C4C4C4');
  static Color gray4 = fromHex('#D0D0D0');
  static Color gray5 = fromHex('#575757');
  static Color gray6 = fromHex('#F2F2F2');
  static Color gray7 = fromHex('#AEAEAF');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}