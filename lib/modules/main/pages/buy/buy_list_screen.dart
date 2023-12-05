import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/cart/cart_controller.dart';
import 'package:boostapp/modules/main/pages/buy/buy_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuyListScreen extends GetView<BuyController>{
  CartController cartController = Get.put(CartController());

  ScrollController _scrollController = ScrollController();
  bool _showedMessage = false;

  @override
  Widget build(BuildContext context) {

    controller.getBuyList();

    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = maxScroll - currentScroll;

      if (delta <= 300 && !_showedMessage) {
        _showedMessage = true;
        controller.page++;
        controller.getBuyList();
      } else if (delta > 300) {
        _showedMessage = false;
      }
    });

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '구매 내역',
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
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Obx(() => ListView.separated(
                  controller: _scrollController,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.buyList.length,
                  separatorBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.only(top: 27.h,bottom: 18.h),
                      child: Divider(
                        height: 0.5.h,
                        thickness: 0.5,
                        color: ColorConstant.black.withOpacity(0.15),
                      ),
                    );
                  },
                  itemBuilder: (context, index){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        controller.isShowDate(index) ? Padding(
                          padding: EdgeInsets.only(bottom: 11.h),
                          child: Text(
                            controller.buyList[index].ct_time.split(' ')[0],
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
                              child: controller.buyList[index].it_img1 != '' ? Image.network(
                                controller.buyList[index].it_img1,width: 96.w,height: 96.h,fit: BoxFit.cover,
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
                                         */
                                    SizedBox(height: 5.h,),
                                    Wrap(
                                      children: [
                                        Text(
                                          controller.buyList[index].it_name,
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 10.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                    /*
                                        SizedBox(height: 5.h,),
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
                                                text: '${Constants.numberAddComma(controller.buyList[index].ct_price)}원',
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
                                          List<dynamic> ctItems = [];

                                          if(controller.buyList[index].io_no != 0){
                                            //옵션 있을때
                                            ctItems.add({
                                              'io_no' : controller.buyList[index].io_no,
                                              'ct_qty' : 1
                                            });
                                          }else{
                                            ctItems.add({
                                              'ct_qty' : 1
                                            });
                                          }

                                          cartController.addCart(context, controller.buyList[index].it_id.toString(), ctItems);
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
                        controller.buyList[index].ct_status == '완료'
                            && controller.buyList[index].is_id == 0
                            && Constants.diffDate(controller.buyList[index].completion_time) <= 7 ? Container(
                          width: Get.width,
                          child: ElevatedButton(
                            onPressed: () async {

                              var res = await Get.toNamed(AppRoutes.reviewEdit,arguments: {
                                'ctId' : controller.buyList[index].ct_id,
                                'itName' : controller.buyList[index].it_name,
                                'type' : 'register'
                              });

                              if(res != null){
                                controller.page.value = 1;
                                controller.getBuyList();
                              }
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
                              '리뷰 작성하기',
                              style: TextStyle(
                                color: ColorConstant.white,
                                fontSize: 11.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ) : SizedBox(),
                      ],
                    );
                  },
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

}