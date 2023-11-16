import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/pay/pay_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PayScreen extends GetView<PayController>{

  void _showDeletePopup(context,cdNo){
    showDialog(
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
              height: 142.h,
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '해당 결제수단을 삭제하시겠습니까?',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
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
                          SizedBox(width: 6.w,),
                          Container(
                            width: 79.w,
                            height: 28.h,
                            child: ElevatedButton(
                              onPressed: (){
                                Get.back();
                                controller.deleteCard(cdNo);
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
                        ],
                      )
                    ],
                  )
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '결제수단 목록',
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
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: controller.obx(
                      (state) => Column(
                        children: [
                          SizedBox(height: 16.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '등록 카드',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 47.w,),
                              Text(
                                '${Constants.numberAddComma(state.items.length)}개',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10.h,),
                          Container(
                            color: ColorConstant.gray16,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index){
                                  return Container(
                                    height: 66.h,
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/ic_card.png',width: 33.w,height: 33.h,),
                                        SizedBox(width: 11.w,),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    state.items[index].subject,
                                                    style: TextStyle(
                                                      color: ColorConstant.black,
                                                      fontSize: 11.sp,
                                                      fontFamily: 'Noto Sans KR',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(width: 9.w,),
                                                  GestureDetector(
                                                    onTap: (){
                                                      controller.showCardNamePopup(context,state.items[index].cd_no,state.items[index].subject);
                                                    },
                                                    child: Image.asset('assets/images/ic_edit_card.png',width: 12.w,height: 12.h,),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                Constants.getMaskingCard(state.items[index].number),
                                                style: TextStyle(
                                                  color: ColorConstant.black,
                                                  fontSize: 10.sp,
                                                  fontFamily: 'Noto Sans KR',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              side: BorderSide(width: 1.w, color: ColorConstant.primary),
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(5.r))
                                              ),
                                              padding: EdgeInsets.all(0),
                                              minimumSize: Size(55.w,25.h),
                                              backgroundColor: ColorConstant.white
                                          ),
                                          onPressed: (){
                                            if(controller.orderType.value == ''){
                                              _showDeletePopup(context,state.items[index].cd_no);
                                            }else{
                                              Get.back(result: {
                                                'subject' : state.items[index].subject,
                                                'number' : state.items[index].number,
                                              });
                                            }
                                          },
                                          child: Text(
                                            controller.orderType.value == '' ? '삭제' : '선택',
                                            style: TextStyle(
                                              color: ColorConstant.primary,
                                              fontSize: 10.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index){
                                  return Divider(
                                    height: 0.5,
                                    thickness: 0.5,
                                    color: ColorConstant.black.withOpacity(0.1),
                                  );
                                },
                                itemCount: state.items.length
                            ),
                          ),
                          SizedBox(height: 8.h,),
                        ],
                      ),
                      onEmpty: SizedBox()
                  ),
                ),
              ),
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () async {
                  var res = await Get.toNamed(AppRoutes.payRegister);

                  if(res != null){
                    controller.getCardList();
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstant.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                    ),
                    minimumSize: Size(0,45.h)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_sharp,size: 16,color: ColorConstant.white,),
                    SizedBox(width: 6.w,),
                    Text(
                      '결제수단 추가',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 14.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),

              ),
            )
          ],
        ),
      ),
    );
  }

}