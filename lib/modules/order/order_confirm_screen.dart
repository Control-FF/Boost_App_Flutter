import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/order/order_confirm_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';

class OrderConfirmScreen extends GetView<OrderConfirmController>{

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();

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
                                        GestureDetector(
                                          onTap: () async {
                                            var res = await Get.toNamed(AppRoutes.pointUse);

                                            if(res != null){
                                              controller.usePoint.value = res['point'];

                                            }
                                          },
                                          child: Row(
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
                                        ),
                                        Text(
                                          '${Constants.numberAddComma(controller.usePoint.value)}원',
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
                                    GestureDetector(
                                      onTap: () async {
                                        var res = await Get.toNamed(AppRoutes.couponUse);

                                        if(res != null){
                                          controller.cpNo.value = res['cpNo'];
                                          controller.cpPrice.value = res['cpPrice'];
                                        }
                                      },
                                      child: Row(
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
                                            '${Constants.numberAddComma(controller.cpPrice.value)}원',
                                            style: TextStyle(
                                              color: ColorConstant.primary,
                                              fontSize: 8.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
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
                              GestureDetector(
                                onTap: () async {
                                  var res = await Get.toNamed(AppRoutes.shipping,arguments: {
                                    'location': controller.shippingRequest[0].location,
                                    'enter': controller.enter.value,
                                    'etc': controller.etc.value,
                                  });

                                  if(res != null){
                                    String location = res['location'];
                                    controller.enter.value = res['enter'];
                                    controller.etc.value = res['etc'];
                                    controller.shippingRequest[0] = controller.shippingRequest[0].copyWith(location: location);
                                  }
                                },
                                child: Container(
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
                                              controller.enter.value == '' ? '' : '(벨${controller.enter.value})'
                                              '${controller.etc.value != '' ? '\n${controller.etc}' : ''}',
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
                              !controller.isShipping.value ? Container(
                                width: Get.width,
                                margin: EdgeInsets.only(top: 52.h),
                                decoration: BoxDecoration(
                                  border: Border.all(color: ColorConstant.gray2.withOpacity(0.45), width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(17.r))
                                ),
                                child: TableCalendar(
                                  availableGestures: AvailableGestures.none,
                                  headerStyle: const HeaderStyle(
                                      headerMargin: EdgeInsets.only(bottom: 10),
                                      formatButtonVisible: false,
                                      titleCentered: true,
                                      titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
                                      leftChevronIcon: Icon(Icons.chevron_left,color: Color(0xFF979898),),
                                      rightChevronIcon: Icon(Icons.chevron_right,color: Color(0xFF979898),)
                                  ),
                                  rowHeight: 60,
                                  daysOfWeekHeight: 50,
                                  focusedDay: controller.selectedDay!.value,
                                  firstDay: DateTime(2023,11,1),
                                  lastDay: DateTime(2999,1,31),
                                  locale: 'ko-KR',
                                  calendarBuilders: CalendarBuilders(
                                    selectedBuilder: (context, day, _){
                                      return getSelectedCalendarBuilder(context,day,_,day.weekday);
                                    },
                                    defaultBuilder: (context, day, _){
                                      return getDefaultCalendarBuilder(context,day,_,day.weekday);
                                    },
                                    todayBuilder: (context, day, _){
                                      return getTodayCalendarBuilder(context,day,_,day.weekday);
                                    },
                                    outsideBuilder: (context, day, _){
                                      return getOutSideCalendarBuilder(context,day,_,day.weekday);
                                    },
                                    dowBuilder: (context, day){
                                      switch(day.weekday){
                                        case 1:
                                          return Center(child: Text('Mo', style: TextStyle(color: ColorConstant.black3,fontSize: 12,),));
                                        case 2:
                                          return Center(child: Text('Tu', style: TextStyle(color: ColorConstant.black3,fontSize: 12,),));
                                        case 3:
                                          return Center(child: Text('We', style: TextStyle(color: ColorConstant.black3,fontSize: 12,),));
                                        case 4:
                                          return Center(child: Text('Th', style: TextStyle(color: ColorConstant.black3,fontSize: 12,),));
                                        case 5:
                                          return Center(child: Text('Fr', style: TextStyle(color: ColorConstant.black3,fontSize: 12,),));
                                        case 6:
                                          return Center(child: Text('Sa', style: TextStyle(color: ColorConstant.black3,fontSize: 12,),));
                                        case 7:
                                          return Center(child: Text('Su', style: TextStyle(color: ColorConstant.black3,fontSize: 12,),));
                                      }

                                    },
                                  ),
                                  onDaySelected: (selectedDay, focusDay){
                                    String year = selectedDay.year.toString();
                                    String month = selectedDay.month < 10 ? '0${selectedDay.month}' : selectedDay.month.toString();
                                    String day = selectedDay.day < 10 ? '0${selectedDay.day}' : selectedDay.day.toString();

                                    controller.selectedDate.value = '$year-$month-$day';

                                    if (!isSameDay(controller.selectedDay!.value, selectedDay)) {
                                      controller.selectedDay!.value = selectedDay;
                                    }

                                  },

                                  onFormatChanged: (format){
                                    /*
                                      if (_calendarFormat != format) {
                                        // Call `setState()` when updating calendar format
                                        setState(() {
                                          _calendarFormat = format;
                                        });
                                      }

                                       */
                                  },
                                  onPageChanged: (datetime){

                                  },
                                  selectedDayPredicate: (day){
                                    return isSameDay(controller.selectedDay!.value, day);
                                  },
                                ),
                              ) : SizedBox(),
                              SizedBox(height: 30.h,),
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
                              GestureDetector(
                                onTap: () async {
                                  var res = await Get.toNamed(AppRoutes.payList,arguments: {'type' : 'order'});

                                  if(res != null){
                                    controller.paymentMethod[0] = controller.paymentMethod[0].copyWith(subject: res['subject']);
                                    controller.paymentMethod[0] = controller.paymentMethod[0].copyWith(number: res['number']);
                                  }
                                },
                                child: Container(
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
                                      '-${Constants.numberAddComma(controller.usePoint.value)}P',
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
                                      '-${Constants.numberAddComma(controller.cpPrice.value)}원',
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
                                    controller.totalPayment.isNotEmpty ? '${Constants.numberAddComma(controller.getFinalPrice())}원' : '',
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
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                elevation: 6.0,
                                behavior: SnackBarBehavior.floating,
                                content: Text(
                                  'PG사 등록이 안되었습니다.',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ));
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
                                  ? '${Constants.numberAddComma(controller.getFinalPrice())}원 바로 결제하기'
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

  Widget getSelectedCalendarBuilder(context, DateTime day, _ , int weekDay){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 8,bottom: 6),
            child: Container(
              width: 30.w,
              height: 30.h,
              alignment: Alignment.center,
              child: Text(day.day.toString(), style: TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                color: ColorConstant.primary,
                border: Border.all(color: ColorConstant.primary,width: 1),
                shape: BoxShape.circle
              ),
            ),
          )
      ),
    );
  }

  Widget getDefaultCalendarBuilder(context, DateTime day, _ , int weekDay){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 8,bottom: 6),
            child: Container(
              width: 30.w,
              height: 30.h,
              alignment: Alignment.center,
              child: Text(day.day.toString(), style: TextStyle(color: ColorConstant.gray24,fontSize: 12, fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  color: ColorConstant.white,
                  border: Border.all(color: ColorConstant.white,width: 1),
                  shape: BoxShape.circle
              ),
            ),
          )
      ),
    );
  }

  Widget getTodayCalendarBuilder(context, DateTime day, _ , int weekDay){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 8,bottom: 6),
            child: Container(
              width: 30.w,
              height: 30.h,
              alignment: Alignment.center,
              child: Text(day.day.toString(), style: TextStyle(color: ColorConstant.gray24,fontSize: 12, fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  color: ColorConstant.white,
                  border: Border.all(color: ColorConstant.white,width: 1),
                  shape: BoxShape.circle
              ),
            ),
          )
      ),
    );
  }

  Widget getOutSideCalendarBuilder(context, DateTime day, _ , int weekDay){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 8,bottom: 6),
            child: Container(
              width: 30.w,
              height: 30.h,
              alignment: Alignment.center,
              child: Text(day.day.toString(), style: TextStyle(color: ColorConstant.white,fontSize: 12, fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  color: ColorConstant.white,
                  border: Border.all(color: ColorConstant.white,width: 1),
                  shape: BoxShape.circle
              ),
            ),
          )
      ),
    );
  }
}