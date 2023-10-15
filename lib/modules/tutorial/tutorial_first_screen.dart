import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/tutorial/tutorial_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TutorialFirstScreen extends StatelessWidget{

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
                'Choose Products',
                style: TextStyle(
                  color: ColorConstant.primary,
                  fontSize: 33.sp,
                  fontFamily: 'Chab',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '원하는 상품을 마음껏 골라보세요!',
                style: TextStyle(
                  color: ColorConstant.gray1,
                  fontSize: 20.sp,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Image.asset(
                'assets/images/tutorial1.png',
                width: 302.w,
                height: 291.h,
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