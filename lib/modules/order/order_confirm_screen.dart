import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/order/order_confirm_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OrderConfirmScreen extends GetView<OrderConfirmController>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '주문하기 / 배송정보 입력',
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
        body: CustomScrollView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            slivers: [
              Obx(() => SliverList(
                  delegate: SliverChildListDelegate(
                      [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.h,),
                              Text(
                                '상품 확인',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 16.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 18.h,),
                              Container(
                                color: ColorConstant.gray16,
                                child: ListView.separated(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index){
                                      return Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(16.w, 22.h, 16.w, 5.h),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  controller.orderItem.isNotEmpty ? controller.orderItem[index].it_name : '',
                                                  style: TextStyle(
                                                    color: ColorConstant.black,
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Noto Sans KR',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Text(
                                                  controller.orderItem.isNotEmpty ? '${controller.orderItem[index].ct_qty}개' : '',
                                                  style: TextStyle(
                                                    color: ColorConstant.black,
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Noto Sans KR',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 11.h),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: controller.orderItem.isNotEmpty && controller.orderItem[index].it_delivery_type == 'boost'
                                                          ? ColorConstant.primary
                                                          : ColorConstant.accent,
                                                      width: 1
                                                    ),
                                                  ),
                                                  child: Text(
                                                    controller.orderItem.isNotEmpty && controller.orderItem[index].it_delivery_type == 'boost'
                                                        ? '부스트 배송'
                                                        : '택배 배송',
                                                    style: TextStyle(
                                                      color: controller.orderItem.isNotEmpty && controller.orderItem[index].it_delivery_type == 'boost'
                                                          ? ColorConstant.primary
                                                          : ColorConstant.accent,
                                                      fontSize: 9.sp,
                                                      fontFamily: 'Noto Sans KR',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  controller.orderItem.isNotEmpty ? '${Constants.numberAddComma(controller.orderItem[index].ct_price)}원' : '',
                                                  style: TextStyle(
                                                    color: ColorConstant.red,
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Noto Sans KR',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                    separatorBuilder: (context, index){
                                      return Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 13.w),
                                        child: Divider(
                                          height: 0.5.h,
                                          thickness: 0.5,
                                          color: ColorConstant.gray7,
                                        ),
                                      );
                                    },
                                    itemCount: controller.orderItem.length
                                ),
                              ),
                              SizedBox(height: 23.h,),
                              Text(
                                '배송지 확인',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 16.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 27.h,),
                              GestureDetector(
                                onTap: () async {
                                  var res = await Get.toNamed(AppRoutes.addressScreen,arguments: {'title':'배송지 선택','type' : 'order'});

                                  if(res != null){
                                    int addressIdx = res['addressIdx'];
                                    String addressName = res['addressName'];
                                    String address1 = res['address1'];
                                    String address2 = res['address2'];

                                    controller.orderShipping[0] = controller.orderShipping[0].copyWith(od_name: addressName);
                                    controller.orderShipping[0] = controller.orderShipping[0].copyWith(address: '$address1 $address2');

                                  }
                                },
                                child: Container(
                                  width: Get.width,
                                  color: ColorConstant.gray16,
                                  padding: EdgeInsets.fromLTRB(17.w, 19.h, 17.w, 22.h),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.orderShipping.isNotEmpty ? controller.orderShipping[0].od_name : '',
                                        style: TextStyle(
                                          color: ColorConstant.gray25,
                                          fontSize: 12.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        controller.orderShipping.isNotEmpty ? controller.orderShipping[0].od_hp : '',
                                        style: TextStyle(
                                          color: ColorConstant.gray25,
                                          fontSize: 10.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 6.h,),
                                      Text(
                                        controller.orderShipping.isNotEmpty ? controller.orderShipping[0].address : '',
                                        style: TextStyle(
                                          color: ColorConstant.gray25,
                                          fontSize: 10.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 23.h,),
                              Text(
                                '할인정보 확인',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 16.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 27.h,),
                              Container(
                                width: Get.width,
                                color: ColorConstant.gray16,
                                padding: EdgeInsets.fromLTRB(12.w, 13.h, 14.w, 17.h),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '포인트 ',
                                              style: TextStyle(
                                                color: ColorConstant.gray25,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              controller.orderCoupon.isNotEmpty ? '(${Constants.numberAddComma(controller.orderCoupon[0].mb_point)}원 보유)' : '',
                                              style: TextStyle(
                                                color: ColorConstant.gray1,
                                                fontSize: 8.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '0원',
                                          style: TextStyle(
                                            color: ColorConstant.primary,
                                            fontSize: 8.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 9.h,),
                                    Divider(
                                      height: 0.5.h,
                                      thickness: 0.5,
                                      color: ColorConstant.gray7,
                                    ),
                                    SizedBox(height: 9.h,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '쿠폰 ',
                                              style: TextStyle(
                                                color: ColorConstant.gray25,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              controller.orderCoupon.isNotEmpty ? '(${Constants.numberAddComma(controller.orderCoupon[0].unused_coupon_count)}장 보유)' : '',
                                              style: TextStyle(
                                                color: ColorConstant.gray1,
                                                fontSize: 8.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '0원',
                                          style: TextStyle(
                                            color: ColorConstant.primary,
                                            fontSize: 8.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 22.h,),
                              Text(
                                '배송 요청사항',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 16.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 27.h,),
                              Container(
                                width: Get.width,
                                color: ColorConstant.gray16,
                                padding: EdgeInsets.fromLTRB(12.w, 13.h, 14.w, 16.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          controller.shippingRequest.isNotEmpty ? controller.shippingRequest[0].location : '',
                                          style: TextStyle(
                                            color: ColorConstant.gray25,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          '(벨 ****)',
                                          style: TextStyle(
                                            color: ColorConstant.gray1,
                                            fontSize: 8.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset('assets/images/ic_next_order.png',width: 5.w,height: 16.h,)
                                  ],
                                )
                              ),
                              SizedBox(height: 14.h,),
                              Divider(
                                height: 0.5.h,
                                thickness: 0.5,
                                color: ColorConstant.gray26,
                              ),
                              SizedBox(height: 14.h,),
                              Container(
                                width: Get.width,
                                color: ColorConstant.gray16,
                                padding: EdgeInsets.fromLTRB(12.w, 13.h, 14.w, 16.h),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 20.w,
                                              height: 20.h,
                                              child: Checkbox(
                                                side: BorderSide(
                                                    width: 1.w,
                                                    color: ColorConstant.gray7
                                                ),
                                                value: controller.isShipping.value,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(6),
                                                ),
                                                checkColor: ColorConstant.white,
                                                activeColor: ColorConstant.primary,
                                                onChanged: (bool? value){
                                                  controller.isShipping.value = true;
                                                },
                                              ),
                                            ),
                                            SizedBox(width: 14.w,),
                                            Text(
                                              '즉시 배송 (출고)',
                                              style: TextStyle(
                                                color: ColorConstant.gray25,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '9/11 월',
                                          style: TextStyle(
                                            color: ColorConstant.primary,
                                            fontSize: 8.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 9.h,),
                                    Divider(
                                      height: 0.5.h,
                                      thickness: 0.5,
                                      color: ColorConstant.gray7,
                                    ),
                                    SizedBox(height: 9.h,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 20.w,
                                          height: 20.h,
                                          child: Checkbox(
                                            side: BorderSide(
                                                width: 1.w,
                                                color: ColorConstant.gray7
                                            ),
                                            value: !controller.isShipping.value,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            checkColor: ColorConstant.white,
                                            activeColor: ColorConstant.primary,
                                            onChanged: (bool? value){
                                              controller.isShipping.value = false;
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 14.w,),
                                        Text(
                                          '지정일 배송 (출고)',
                                          style: TextStyle(
                                            color: ColorConstant.gray25,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ),
                              SizedBox(height: 9.h,),
                              Text(
                                '*택배 배송은 해당 날짜에 출고 됩니다.',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 22.h,),
                              Text(
                                '결제 수단',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 16.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 27.h,),
                              Container(
                                width: Get.width,
                                color: ColorConstant.gray16,
                                padding: EdgeInsets.fromLTRB(12.w, 13.h, 12.w, 16.h),
                                child: Text(
                                  controller.paymentMethod.isNotEmpty
                                      ? '${controller.paymentMethod[0].subject}(${Constants.getMaskingCard(controller.paymentMethod[0].number)})'
                                      : '',
                                  style: TextStyle(
                                    color: ColorConstant.gray25,
                                    fontSize: 12.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ),
                              SizedBox(height: 39.h,),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(24.w, 8.h, 24.w, 8.h),
                          color: ColorConstant.gray27.withOpacity(0.2),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '총 상품 금액',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    controller.totalPayment.isNotEmpty
                                        ? '${Constants.numberAddComma(controller.totalPayment[0].od_cart_price)}원'
                                        : '',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '총 할인 금액',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '0원',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Padding(
                                padding: EdgeInsets.only(left: 40.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '포인트',
                                      style: TextStyle(
                                        color: ColorConstant.black.withOpacity(0.4),
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '0P',
                                      style: TextStyle(
                                        color: ColorConstant.black.withOpacity(0.4),
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 4.h,),
                              Padding(
                                padding: EdgeInsets.only(left: 40.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '쿠폰',
                                      style: TextStyle(
                                        color: ColorConstant.black.withOpacity(0.4),
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '0원',
                                      style: TextStyle(
                                        color: ColorConstant.black.withOpacity(0.4),
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '총 배송비',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    controller.totalPayment.isNotEmpty ? '${Constants.numberAddComma(controller.totalPayment[0].od_send_cost)}원' : '',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '예상 적립 포인트',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    controller.totalPayment.isNotEmpty ? '${Constants.doubleAddComma(double.parse(controller.totalPayment[0].expected_points))}P' : '',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Divider(
                                height: 1.h,
                                thickness: 1,
                                color: ColorConstant.gray28,
                              ),
                              SizedBox(height: 16.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '총 결제금액',
                                    style: TextStyle(
                                      color: ColorConstant.black.withOpacity(0.85),
                                      fontSize: 16.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    controller.totalPayment.isNotEmpty ? '${Constants.numberAddComma(int.parse(controller.totalPayment[0].total_payment))}원' : '',
                                    style: TextStyle(
                                      color: ColorConstant.red,
                                      fontSize: 16.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 38.h),
                          child: ElevatedButton(
                            onPressed: () async {
                              //var res = await Get.toNamed(AppRoutes.orderConfirm);

                              //if(res != null){
                              //  controller.cartList();
                              //}
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorConstant.primary,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero
                                ),
                                minimumSize: Size(Get.width,55.h)
                            ),
                            child: Text(
                              controller.totalPayment.isNotEmpty
                                  ? '${Constants.numberAddComma(int.parse(controller.totalPayment[0].total_payment))}원 바로 결제하기'
                                  : '',
                              style: TextStyle(
                                color: ColorConstant.white,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                          ),
                        )
                      ]
                  )
              ))
            ]
        )
      ),
    );
  }
}