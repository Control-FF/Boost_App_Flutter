import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/buy/buy_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuyListScreen extends GetView<BuyController>{

  @override
  Widget build(BuildContext context) {
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
                child: controller.obx(
                    (state) => ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.items.length,
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
                            index == 0 ? Padding(
                              padding: EdgeInsets.only(bottom: 11.h),
                              child: Text(
                                state.items[index].ct_select_time,
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
                                  child: Image.asset(
                                    'assets/images/sample_product1.png',width: 96.w,height: 96.h,fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 4.w,),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
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
                                        Wrap(
                                          children: [
                                            Text(
                                              '오리지널 바베큐 폭립 1kg (500X2EA)',
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
                                        Text.rich(
                                            TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '50%',
                                                    style: TextStyle(
                                                      color: ColorConstant.red,
                                                      fontSize: 12.sp,
                                                      fontFamily: 'Noto Sans KR',
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' 3,600원',
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
                            Container(
                              width: Get.width,
                              child: ElevatedButton(
                                onPressed: (){

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
                            ),
                          ],
                        );
                      },
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}