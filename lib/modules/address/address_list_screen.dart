import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/address/address_list_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AddressScreen extends GetView<AddressController>{

  void _showDeletePopup(context, index){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 68.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            content: Container(
              height: 110.h,
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '배송지를 삭제하시겠습니까?',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50.w,
                            height: 23.h,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 1.w, color: ColorConstant.primary),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.w))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              onPressed: (){
                                Get.back();
                              },
                              child: Text(
                                '취소',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          Container(
                            width: 50.w,
                            height: 23.h,
                            child: ElevatedButton(
                              onPressed: (){
                                Get.back();
                              },
                              child: Text(
                                '확인',
                                style: TextStyle(
                                  color: ColorConstant.white,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstant.primary,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.w))
                                  ),
                                  padding: EdgeInsets.all(0)
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
        backgroundColor: ColorConstant.white,
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '배송지 선택',
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
            icon: Icon(Icons.arrow_back,color: ColorConstant.black,),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                width: Get.width,
                margin: EdgeInsets.fromLTRB(30.w, 10.h, 30.w, 0),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1.w, color: ColorConstant.gray2)
                  ),
                  onPressed: () async {
                    var res = await Get.toNamed(AppRoutes.addressEditScreen);
                  },
                  child: Text(
                    '배송지 추가',
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: controller.addressList.value.isEmpty ? Center(
                  child: Text(
                    '등록된 배송지가 없습니다.\n배송지를 추가해주세요.',
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 16.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ) : Obx(() => ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 1.00,
                      margin: EdgeInsets.symmetric(horizontal: 30.w),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray1.withOpacity(0.2),
                      ),
                    );
                  },
                  itemCount: controller.addressList.value.length,
                  itemBuilder: (context, index) {
                    //final item = controller.addressList[index];
                    return Obx(() => Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(30.w, 19.h, 18.w, 0),
                            width: 16.w,
                            height: 16.h,
                            child: Checkbox(
                              side: BorderSide(
                                  width: 1.w,
                                  color: ColorConstant.gray7
                              ),
                              value: controller.selectPosition.value == index,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              checkColor: ColorConstant.white,
                              activeColor: ColorConstant.primary,
                              onChanged: (bool? checkValue){

                                for(int i=0; i<controller.addressList.value.length; i++){
                                  if(i == index){
                                    controller.addressList.value[i].isSelect = true;
                                    controller.selectPosition.value = i;
                                  }else{
                                    controller.addressList.value[i].isSelect = false;
                                  }
                                }
                              },
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 15.h),
                                      width: Get.width,
                                      child: Text(
                                        '${controller.addressList.value[index].receiveName}\n'
                                            '${controller.addressList.value[index].phone}\n'
                                            '${controller.addressList.value[index].address1}\n'
                                            '${controller.addressList.value[index].address2}\n',
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 14.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    controller.addressList.value[index].isBasic ? Positioned(
                                      top: 15,
                                      right: 30,
                                      child: Container(
                                        width: 66.w,
                                        height: 25.h,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          border: Border.all(width: 1,color: ColorConstant.gray2)
                                        ),
                                        child: Text(
                                          '기본배송지',
                                          style: TextStyle(
                                            color: ColorConstant.gray8,
                                            fontSize: 10.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ) : Positioned(
                                      top: 15,
                                      right: 30,
                                      child: Container(
                                        width: 87.w,
                                        height: 24.h,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            side: BorderSide(width: 1.w, color: ColorConstant.primary),
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(5.w))
                                            ),
                                            padding: EdgeInsets.all(0),
                                            minimumSize: Size(87.w,24.h)
                                          ),
                                          onPressed: (){

                                          },
                                          child: Text(
                                            '기본 배송지 설정',
                                            style: TextStyle(
                                              color: ColorConstant.primary,
                                              fontSize: 10.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      /*
                                      child: Container(
                                        width: 66.w,
                                        height: 25.h,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                            border: Border.all(width: 1,color: ColorConstant.gray2)
                                        ),
                                        child: Text(
                                          '기본배송지',
                                          style: TextStyle(
                                            color: ColorConstant.gray8,
                                            fontSize: 10.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),

                                       */
                                    )
                                  ],
                                ),
                                Container(
                                  width: 50.w,
                                  height: 23.h,
                                  child: ElevatedButton(
                                    onPressed: (){
                                      _showDeletePopup(context,index);
                                    },
                                    child: Text(
                                      '삭제',
                                      style: TextStyle(
                                        color: ColorConstant.white,
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorConstant.primary,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(5.w))
                                        ),
                                        padding: EdgeInsets.all(0),
                                        minimumSize: Size(50.w,23.h)
                                    ),
                                  ),
                                ),
                                SizedBox(height: 18.h,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ));
                    /*
                    final item = state.items[index];
                    return ItemWidget(
                      item: item,
                      onTap: () {
                        if (controller.isReadOnly) {
                          Get.back(result: item);
                        } else {
                          Get.toNamed(
                            AppRoutes.addressEditScreen,
                            arguments: item,
                          );
                        }
                      },
                      onDefault: () async => await controller
                          .changeDefaultAdress(add_idx: item.add_idx),
                    );

                     */
                  },
                ),
                )
              ),
              Obx(() => Container(
                width: Get.width,
                height: 55.h,
                margin: EdgeInsets.fromLTRB(30.w, 14.h, 30.w, 47.h),
                child: ElevatedButton(
                  onPressed: () async {
                    if(controller.selectPosition.value == 99999999){
                      return;
                    }

                    var res = await Get.toNamed(AppRoutes.addressEditScreen,arguments: {
                      'addressIdx' : controller.addressList.value[controller.selectPosition.value].idx,
                      'receiveName' : controller.addressList.value[controller.selectPosition.value].receiveName,
                      'phone' : controller.addressList.value[controller.selectPosition.value].phone,
                      'address1' : controller.addressList.value[controller.selectPosition.value].address1,
                      'address2' : controller.addressList.value[controller.selectPosition.value].address2,
                    });

                    if(res != null){

                    }
                  },
                  child: Text(
                    '배송지 변경하기',
                    style: TextStyle(
                      color: ColorConstant.white,
                      fontSize: 16.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: controller.selectPosition.value == 99999999 ? ColorConstant.gray2 : ColorConstant.primary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.w))
                      )
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

}