import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/coupon/coupon_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CouponRegisterScreen extends StatefulWidget{

  @override
  _CouponRegisterScreenState createState() => _CouponRegisterScreenState();
}

class _CouponRegisterScreenState extends State<CouponRegisterScreen>{
  CouponController controller = Get.put(CouponController(),tag: "register");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.white,
        elevation: 0,
        title: Text(
          '쿠폰 등록',
          style: TextStyle(
            color: ColorConstant.black2,
            fontSize: 16.sp,
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded,color: ColorConstant.black,),
        ),
      ),
      backgroundColor: ColorConstant.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Obx(() => Row(
            children: [
              Expanded(
                child: Container(
                  height: 29.h,
                  padding: EdgeInsets.only(left: 12.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    color: ColorConstant.gray17,
                  ),
                  child: TextField(
                    controller: controller.couponController,
                    decoration: InputDecoration(
                        hintText: '쿠폰 번호',
                        hintStyle: TextStyle(
                          color: ColorConstant.gray1,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                        counterText: '',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.zero

                    ),
                    maxLines: 1,
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    onSubmitted: (_) {

                    },
                    onChanged: (value){
                      controller.isCheck.value = value.length == 16;
                    },
                  ),
                ),
              ),
              SizedBox(width: 5,),
              controller.isCheck.value ? ElevatedButton(
                onPressed: (){
                  FocusManager.instance.primaryFocus?.unfocus();

                  String code = controller.couponController.text;

                  if(code.length != 16){
                    controller.showAddCouponPopup(context, '');
                    return;
                  }
                  controller.registerCoupon(context,code);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstant.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.r))
                    ),
                    minimumSize: Size(85.w,29.h)
                ),
                child: Text(
                  '등록하기',
                  style: TextStyle(
                    color: ColorConstant.white,
                    fontSize: 12.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ) : OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 1.w, color: ColorConstant.primary),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.r))
                    ),
                    minimumSize: Size(85.w,29.h)
                ),
                onPressed: (){
                  FocusManager.instance.primaryFocus?.unfocus();
                  controller.showAddCouponPopup(context, '');
                },
                child: Text(
                  '등록하기',
                  style: TextStyle(
                    color: ColorConstant.primary,
                    fontSize: 12.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}