import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/tutorial/tutorial_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TutorialThirdScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 160,
              ),
              Text(
                'Get Your Order',
                style: TextStyle(
                  color: ColorConstant.primary,
                  fontSize: 33.sp,
                  fontFamily: 'Chab',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '집에서 받아보는 편리 배송 시스템',
                style: TextStyle(
                  color: ColorConstant.gray1,
                  fontSize: 20.sp,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              Image.asset(
                'assets/images/tutorial3.png',
                width: 297.w,
                height: 243.h,
              )
            ],
          ),
        ),
        Row(
          children: [

          ],
        )
      ],
    );
  }

}