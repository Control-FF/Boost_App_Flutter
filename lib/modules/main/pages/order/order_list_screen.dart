import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/cart/cart_controller.dart';
import 'package:boostapp/modules/main/pages/order/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OrderListScreen extends GetView<OrderController>{
  CartController cartController = Get.put(CartController());

  void _showStep1Popup(context){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 68.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r))
            ),
            content: Container(
              height: 173.h,
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '취소, 교환 신청',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 16.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 79.w,
                            height: 28.h,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 1.w, color: ColorConstant.gray2),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              onPressed: (){
                                Get.back();
                                _showStep1DetailPopup(context,'cancel');
                              },
                              child: Text(
                                '취소신청',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          Container(
                            width: 79.w,
                            height: 28.h,
                            child: ElevatedButton(
                              onPressed: (){
                                Get.back();
                                _showStep1DetailPopup(context,'exchange');
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstant.primary,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              child: Text(
                                '교환신청',
                                style: TextStyle(
                                  color: ColorConstant.white,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ),
            ),
          );
        });
  }

  void _showStep1DetailPopup(context,type){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 68.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r))
            ),
            content: Obx(() => Container(
              height: 260.h,
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${type == 'cancel' ? '취소' : '교환'} 사유',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 16.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      Container(
                        width: 187.w,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '상세 사유',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 10.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 89.h,
                        width: 187.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                            border: Border.all(color: ColorConstant.gray2,width: 1)
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: 187.w,
                                height: 167.h,
                                child: TextField(
                                  controller: controller.orderListCancelController,
                                  decoration: const InputDecoration(
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
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                  maxLength: 100,
                                  maxLines: 16,
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 10.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  keyboardType: TextInputType.multiline,
                                  textInputAction: TextInputAction.newline,
                                  onChanged: (value){
                                    controller.orderListCancelLength.value = value.length;
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${controller.orderListCancelLength.value}/100자',
                                style: TextStyle(
                                  color: ColorConstant.gray12,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 33.h,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: BorderSide(width: 1.w, color: ColorConstant.gray2),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5.r))
                                    ),
                                    padding: EdgeInsets.all(0)
                                ),
                                onPressed: (){
                                  Get.back();
                                },
                                child: Text(
                                  '취소',
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 10.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 7.w,),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 33.h,
                              child: ElevatedButton(
                                onPressed: (){
                                  Get.back();

                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: ColorConstant.primary,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5.r))
                                    ),
                                    padding: EdgeInsets.all(0)
                                ),
                                child: Text(
                                  '${type == 'cancel' ? '취소' : '교환'}신청',
                                  style: TextStyle(
                                    color: ColorConstant.white,
                                    fontSize: 10.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
              ),
            )),
          );
        });
  }

  void _showStep2Popup(context){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 68.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r))
            ),
            content: Container(
              height: 173.h,
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '교환, 반품 신청',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 16.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 79.w,
                            height: 28.h,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 1.w, color: ColorConstant.gray2),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              onPressed: (){
                                Get.back();
                                _showStep2DetailPopup(context,'exchange');
                              },
                              child: Text(
                                '교환신청',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          Container(
                            width: 79.w,
                            height: 28.h,
                            child: ElevatedButton(
                              onPressed: (){
                                Get.back();
                                _showStep2DetailPopup(context,'refund');
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstant.primary,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              child: Text(
                                '반품(환불)신청',
                                style: TextStyle(
                                  color: ColorConstant.white,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ),
            ),
          );
        });
  }

  void _showStep2DetailPopup(context,type){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 68.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r))
            ),
            content: Obx(() => Container(
              height: 500.h,
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${type == 'exchange' ? '교환' : '반품'} 사유',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 16.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.h,),
                      Container(
                        padding: EdgeInsets.fromLTRB(12.w, 10.h, 12.w, 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                          border: Border.all(color: ColorConstant.gray2, width: 1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 12.w,
                              height: 12.h,
                              child: Checkbox(
                                side: BorderSide(
                                    width: 1.w,
                                    color: ColorConstant.gray7
                                ),
                                value: controller.orderListRefundCheck1.value,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                checkColor: ColorConstant.white,
                                activeColor: ColorConstant.primary,
                                onChanged: (bool? value){
                                  controller.orderListRefundCheck1.value = value!;
                                  controller.orderListRefundCheck(0);
                                },
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            GestureDetector(
                              onTap: (){
                                controller.orderListRefundCheck1.value = !controller.orderListRefundCheck1.value;
                                controller.orderListRefundCheck(0);
                              },
                              child: Text(
                                '단순 구매자 변심',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 6.h,),
                      Container(
                        padding: EdgeInsets.fromLTRB(12.w, 10.h, 12.w, 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                          border: Border.all(color: ColorConstant.gray2, width: 1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 12.w,
                              height: 12.h,
                              child: Checkbox(
                                side: BorderSide(
                                    width: 1.w,
                                    color: ColorConstant.gray7
                                ),
                                value: controller.orderListRefundCheck2.value,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                checkColor: ColorConstant.white,
                                activeColor: ColorConstant.primary,
                                onChanged: (bool? value){
                                  controller.orderListRefundCheck2.value = value!;
                                  controller.orderListRefundCheck(1);
                                },
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            GestureDetector(
                              onTap: (){
                                controller.orderListRefundCheck2.value = !controller.orderListRefundCheck2.value;
                                controller.orderListRefundCheck(1);
                              },
                              child: Text(
                                '상품 불량',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 6.h,),
                      Container(
                        padding: EdgeInsets.fromLTRB(12.w, 10.h, 12.w, 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                          border: Border.all(color: ColorConstant.gray2, width: 1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 12.w,
                              height: 12.h,
                              child: Checkbox(
                                side: BorderSide(
                                    width: 1.w,
                                    color: ColorConstant.gray7
                                ),
                                value: controller.orderListRefundCheck3.value,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                checkColor: ColorConstant.white,
                                activeColor: ColorConstant.primary,
                                onChanged: (bool? value){
                                  controller.orderListRefundCheck3.value = value!;
                                  controller.orderListRefundCheck(2);
                                },
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            GestureDetector(
                              onTap: (){
                                controller.orderListRefundCheck3.value = !controller.orderListRefundCheck3.value;
                                controller.orderListRefundCheck(2);
                              },
                              child: Text(
                                '상품 오배송',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 6.h,),
                      Container(
                        padding: EdgeInsets.fromLTRB(12.w, 10.h, 12.w, 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                          border: Border.all(color: ColorConstant.gray2, width: 1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 12.w,
                              height: 12.h,
                              child: Checkbox(
                                side: BorderSide(
                                    width: 1.w,
                                    color: ColorConstant.gray7
                                ),
                                value: controller.orderListRefundCheck4.value,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                checkColor: ColorConstant.white,
                                activeColor: ColorConstant.primary,
                                onChanged: (bool? value){
                                  controller.orderListRefundCheck4.value = value!;
                                  controller.orderListRefundCheck(3);
                                },
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            GestureDetector(
                              onTap: (){
                                controller.orderListRefundCheck4.value = !controller.orderListRefundCheck4.value;
                                controller.orderListRefundCheck(3);
                              },
                              child: Text(
                                '설명과 다름',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 11.h,),
                      Container(
                        width: 187.w,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '상세 사유',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 10.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 89.h,
                        width: 187.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                            border: Border.all(color: ColorConstant.gray2,width: 1)
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: 187.w,
                                height: 167.h,
                                child: TextField(
                                  controller: controller.orderListCancelController,
                                  decoration: const InputDecoration(
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
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                  maxLength: 100,
                                  maxLines: 16,
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 10.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  keyboardType: TextInputType.multiline,
                                  textInputAction: TextInputAction.newline,
                                  onChanged: (value){
                                    controller.orderListCancelLength.value = value.length;
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${controller.orderListCancelLength.value}/100자',
                                style: TextStyle(
                                  color: ColorConstant.gray12,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12.h,),
                      Container(
                        width: 187.w,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '사진 등록',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 10.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 7.h,),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){

                              },
                              child: Container(
                                width: 37.w,
                                height: 37.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(7.r)),
                                    color: ColorConstant.gray2
                                ),
                                child: Icon(Icons.add,size: 20,color: ColorConstant.white,),
                              ),
                            ),
                            SizedBox(width: 6.h,),
                            Stack(
                              children: [
                                Container(
                                  width: 37.w,
                                  height: 37.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(7.r)),
                                      color: ColorConstant.gray2
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: (){

                                    },
                                    child: Image.asset('assets/images/ic_circle_close.png',width: 9,height: 9,),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 6.h,),
                            Stack(
                              children: [
                                Container(
                                  width: 37.w,
                                  height: 37.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(7.r)),
                                      color: ColorConstant.gray2
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: (){

                                    },
                                    child: Image.asset('assets/images/ic_circle_close.png',width: 9,height: 9,),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 6.h,),
                            Stack(
                              children: [
                                Container(
                                  width: 37.w,
                                  height: 37.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(7.r)),
                                      color: ColorConstant.gray2
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: (){

                                    },
                                    child: Image.asset('assets/images/ic_circle_close.png',width: 9,height: 9,),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 6.h,),
                            Stack(
                              children: [
                                Container(
                                  width: 37.w,
                                  height: 37.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(7.r)),
                                      color: ColorConstant.gray2
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: (){

                                    },
                                    child: Image.asset('assets/images/ic_circle_close.png',width: 9,height: 9,),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 33.h,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: BorderSide(width: 1.w, color: ColorConstant.gray2),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5.r))
                                    ),
                                    padding: EdgeInsets.all(0)
                                ),
                                onPressed: (){
                                  Get.back();
                                  controller.orderListClear();
                                },
                                child: Text(
                                  '취소',
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 10.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 7.w,),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 33.h,
                              child: ElevatedButton(
                                onPressed: (){
                                  Get.back();
                                  controller.orderListClear();
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: ColorConstant.primary,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5.r))
                                    ),
                                    padding: EdgeInsets.all(0)
                                ),
                                child: Text(
                                  '확인',
                                  style: TextStyle(
                                    color: ColorConstant.white,
                                    fontSize: 10.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
              ),
            )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '주문 내역',
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
        body: controller.obx(
            (state) => Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Divider(
                    thickness: 1,
                    height: 1.h,
                    color: ColorConstant.black.withOpacity(0.1),
                  ),
                ),
                Obx(() => Container(
                  margin: EdgeInsets.fromLTRB(30.w, 12.h, 30.w, 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.orderListStatus.value = 0;
                          controller.getOrderList();
                        },
                        child: Container(
                          width: 53.w,
                          height: 70.h,
                          padding: EdgeInsets.only(top: 9.5.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.r)),
                              color: controller.orderListStatus.value == 0 ? ColorConstant.gray12 : ColorConstant.blue2.withOpacity(0.29)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                controller.userData.value == null ? '0' : controller.userData.value!.order!.deposit_cnt.toString(),
                                style: TextStyle(
                                  color: controller.orderListStatus.value == 0 ? ColorConstant.white : ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Wrap(
                                    children: [
                                      Text(
                                        '입금, 결제 완료',
                                        style: TextStyle(
                                          color: controller.orderListStatus.value == 0 ? ColorConstant.white : ColorConstant.black,
                                          fontSize: 10.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          controller.orderListStatus.value = 1;
                          controller.getOrderList();
                        },
                        child: Container(
                          width: 53.w,
                          height: 70.h,
                          padding: EdgeInsets.only(top: 9.5.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.r)),
                              color: controller.orderListStatus.value == 1 ? ColorConstant.gray12 : ColorConstant.blue2.withOpacity(0.29)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                controller.userData.value == null ? '0' : controller.userData.value!.order!.prepare_cnt.toString(),
                                style: TextStyle(
                                  color: controller.orderListStatus.value == 1 ? ColorConstant.white : ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Wrap(
                                    children: [
                                      Text(
                                        '배송\n준비중',
                                        style: TextStyle(
                                          color: controller.orderListStatus.value == 1 ? ColorConstant.white : ColorConstant.black,
                                          fontSize: 10.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          controller.orderListStatus.value = 2;
                          controller.getOrderList();
                        },
                        child: Container(
                          width: 53.w,
                          height: 70.h,
                          padding: EdgeInsets.only(top: 9.5.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.r)),
                              color: controller.orderListStatus.value == 2 ? ColorConstant.gray12 : ColorConstant.blue2.withOpacity(0.29)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                controller.userData.value == null ? '0' : controller.userData.value!.order!.delivery_cnt.toString(),
                                style: TextStyle(
                                  color: controller.orderListStatus.value == 2 ? ColorConstant.white : ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Wrap(
                                    children: [
                                      Text(
                                        '배송중',
                                        style: TextStyle(
                                          color: controller.orderListStatus.value == 2 ? ColorConstant.white : ColorConstant.black,
                                          fontSize: 10.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          controller.orderListStatus.value = 3;
                          controller.getOrderList();
                        },
                        child: Container(
                          width: 53.w,
                          height: 70.h,
                          padding: EdgeInsets.only(top: 9.5.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.r)),
                              color: controller.orderListStatus.value == 3 ? ColorConstant.gray12 : ColorConstant.blue2.withOpacity(0.29)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                controller.userData.value == null ? '0' : controller.userData.value!.order!.complete_cnt.toString(),
                                style: TextStyle(
                                  color: controller.orderListStatus.value == 3 ? ColorConstant.white : ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Wrap(
                                    children: [
                                      Text(
                                        '배송\n완료',
                                        style: TextStyle(
                                          color: controller.orderListStatus.value == 3 ? ColorConstant.white : ColorConstant.black,
                                          fontSize: 10.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          controller.orderListStatus.value = 4;
                          controller.getOrderList();
                        },
                        child: Container(
                          width: 53.w,
                          height: 70.h,
                          padding: EdgeInsets.only(top: 9.5.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.r)),
                              color: controller.orderListStatus.value == 4 ? ColorConstant.gray12 : ColorConstant.blue2.withOpacity(0.29)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                controller.userData.value == null ? '0' : controller.userData.value!.order!.cancel_cnt.toString(),
                                style: TextStyle(
                                  color: controller.orderListStatus.value == 4 ? ColorConstant.white : ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Wrap(
                                    children: [
                                      Text(
                                        '취소, 교환, 환불',
                                        style: TextStyle(
                                          color: controller.orderListStatus.value == 4 ? ColorConstant.white : ColorConstant.black,
                                          fontSize: 10.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.items.length,
                      itemBuilder: (context, index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            controller.isShowDate(index) ? Padding(
                              padding: EdgeInsets.only(bottom: 11.h),
                              child: Text(
                                state.items[index].ct_time.split(' ')[0],
                                style: TextStyle(
                                  color: ColorConstant.gray12,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ) : SizedBox(),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(6.r)),
                                  child: state.items[index].it_img1 != '' ? Image.network(
                                    state.items[index].it_img1,width: 96.w,height: 96.h,fit: BoxFit.cover,
                                  ) : Image.asset(
                                    'assets/images/product_sample.png',width: 96.w,height: 96.h,fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 4.w,),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        /*
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.fromLTRB(4.w, 2.h, 4.w, 2.h),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: ColorConstant.accent, width: 1),
                                                  borderRadius: BorderRadius.all(Radius.circular(4))
                                              ),
                                              child: Text(
                                                '부스트배송',
                                                style: TextStyle(
                                                  color: ColorConstant.accent,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Noto Sans KR',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            SizedBox(width: 6.w,),
                                            Text(
                                              '9/14(목) 도착',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 5.h,),

                                         */
                                        Wrap(
                                          children: [
                                            Text(
                                              state.items[index].it_name,
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 10.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 5.h,),
                                        /*
                                        Wrap(
                                          children: [
                                            Text(
                                              '언제 어디서든 가볍게 수분보충',
                                              style: TextStyle(
                                                color: ColorConstant.gray1,
                                                fontSize: 8.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        ),

                                         */
                                        Text.rich(
                                            TextSpan(
                                                children: [
                                                  /*
                                                  TextSpan(
                                                    text: '50%',
                                                    style: TextStyle(
                                                      color: ColorConstant.red,
                                                      fontSize: 12.sp,
                                                      fontFamily: 'Noto Sans KR',
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),

                                                   */
                                                  TextSpan(
                                                    text: '${Constants.numberAddComma(state.items[index].ct_price)}원',
                                                    style: TextStyle(
                                                      color: ColorConstant.black,
                                                      fontSize: 12.sp,
                                                      fontFamily: 'Noto Sans KR',
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  )
                                                ]
                                            )
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: ElevatedButton(
                                            onPressed: (){
                                              //add cart
                                              /*
                                              List<dynamic> ctItems = [];

                                              if(controller.orderList[index].io_no != 0){
                                                //옵션 있을때
                                                ctItems.add({
                                                  'io_no' : controller.orderList[index].io_no,
                                                  'ct_qty' : 1
                                                });
                                              }else{
                                                ctItems.add({
                                                  'ct_qty' : 1
                                                });
                                              }


                                               */
                                              //cartController.addCart(context, controller.orderList[index].it_id.toString(), ctItems);
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: ColorConstant.primary,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(4.r))
                                                ),
                                                minimumSize: Size(77.w,24.h)
                                            ),
                                            child: Text(
                                              '장바구니 담기',
                                              style: TextStyle(
                                                color: ColorConstant.white,
                                                fontSize: 10.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 11.h,),
                            Obx(() => controller.orderListStatus.value == 4
                                ? Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 14),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: ColorConstant.accent
                              ),
                              child: Text(
                                '교환, 반품신청 완료',
                                style: TextStyle(
                                  color: ColorConstant.white,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                                : Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: ElevatedButton(
                                    onPressed: (){
                                      if(controller.orderListStatus.value == 3){
                                        _showStep2Popup(context);
                                      }else{
                                        _showStep1Popup(context);
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorConstant.gray20,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(4.r))
                                        ),
                                        minimumSize: Size(0.w,28.h)
                                    ),
                                    child: Text(
                                      controller.orderListStatus.value == 3 ? '교환, 반품 신청' : '취소, 교환 신청',
                                      style: TextStyle(
                                        color: ColorConstant.white,
                                        fontSize: 11.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 6.w,),
                                Expanded(
                                  flex: 1,
                                  child: ElevatedButton(
                                    onPressed: (){
                                      //add cart
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorConstant.accent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(4.r))
                                        ),
                                        minimumSize: Size(0.w,28.h)
                                    ),
                                    child: Text(
                                      controller.orderListStatus.value == 3 ? '구매 확정' : '배송 조회',
                                      style: TextStyle(
                                        color: ColorConstant.white,
                                        fontSize: 11.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                            SizedBox(height: 20.h,)
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }

}