import 'package:boostapp/core/utils/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget{
  String text;
  double textSize;
  Color textColor;
  Color backColor;
  double btnRadius;
  String textFontFamily;
  FontWeight textFontWeight;
  double width;
  double height;

  CustomButton(
      this.text,
      this.textSize,
      this.textColor,
      this.backColor,
      this.btnRadius,
      this.textFontFamily,
      this.textFontWeight,
      this.width,
      this.height
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.all(Radius.circular(btnRadius)),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: textSize,
          color: textColor,
          fontFamily: textFontFamily,
          fontWeight: textFontWeight,
        ),
      ),
    );
  }
}