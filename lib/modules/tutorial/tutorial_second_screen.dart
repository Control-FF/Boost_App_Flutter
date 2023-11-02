import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/tutorial/tutorial_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TutorialSecondScreen extends StatelessWidget{

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
                'Make Payment',
                style: TextStyle(
                  color: ColorConstant.primary,
                  fontSize: 33.sp,
                  fontFamily: 'Chab',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '집안에서 편하게 결제해보세요',
                style: TextStyle(
                  color: ColorConstant.gray1,
                  fontSize: 20.sp,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/images/tutorial2.png',
                width: 316.w,
                height: 245.h,
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