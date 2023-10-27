import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/address/address_edit_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:remedi_kopo/remedi_kopo.dart';

class AddressEditScreen extends GetView<AddressEditController>{

  _addressAPI(context) async{
    KopoModel? model = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RemediKopo())
    );
    String? zoneCode = model?.zonecode;
    String? address1 = model?.address;
    String? address2 = model?.buildingName;

    if(zoneCode != null){
      controller.postCode = zoneCode;
    }
    if(address1 != null){
      controller.address1.value = address1;
    }
    if(address2 != null){
      controller.addressController.text = address2;
    }

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
            controller.addressIdx.value == 0 ? '배송지 추가' : '배송지 변경',
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
        body: Obx(
          () => Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 29.h,),
                          Text(
                            '받는 사람',
                            style: TextStyle(
                              color: ColorConstant.black.withOpacity(0.77),
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7.h),
                            width: Get.width,
                            height: 55.h,
                            child: TextField(
                              focusNode: controller.nameFocusNode,
                              controller: controller.receiveNameController,
                              decoration: InputDecoration(
                                counterText: '',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                ),
                              ),
                              maxLines: 1,
                              style: TextStyle(
                                color: ColorConstant.gray1,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.phoneFocusNode),
                            ),
                          ),
                          SizedBox(height: 13.h,),
                          Text(
                            '전화 번호',
                            style: TextStyle(
                              color: ColorConstant.black.withOpacity(0.77),
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 9.h),
                            width: Get.width,
                            height: 55.h,
                            child: TextField(
                              focusNode: controller.phoneFocusNode,
                              controller: controller.phoneController,
                              decoration: InputDecoration(
                                counterText: '',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                    minWidth: 81.w,
                                    minHeight: 23.h
                                ),
                              ),
                              maxLines: 1,
                              maxLength: 13,
                              style: TextStyle(
                                color: ColorConstant.gray1,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              inputFormatters: [
                                MaskTextInputFormatter(
                                  mask: '###-####-####',
                                  filter: {"#": RegExp(r'[0-9]')},
                                  type: MaskAutoCompletionType.lazy,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 13.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '주소',
                                style: TextStyle(
                                  color: ColorConstant.black.withOpacity(0.77),
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: 72.w,
                                height: 30.h,
                                child: ElevatedButton(
                                  onPressed: (){
                                    _addressAPI(context);
                                  },
                                  child: Text(
                                    '주소검색',
                                    style: TextStyle(
                                      color: ColorConstant.white,
                                      fontSize: 14.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: ColorConstant.primary,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(4.r))
                                      ),
                                      padding: EdgeInsets.all(0),
                                      minimumSize: Size(72.w,30.h)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 9.h),
                            padding: EdgeInsets.symmetric(horizontal: 13.w),
                            width: Get.width,
                            height: 55.h,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.w,
                                  color: ColorConstant.gray2
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(4.r)),
                            ),
                            child: Text(
                                controller.address1.value,
                                style: TextStyle(
                                  color: ColorConstant.gray1,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                )
                            ),
                          ),
                          SizedBox(height: 13.h,),
                          Text(
                            '상세주소',
                            style: TextStyle(
                              color: ColorConstant.black.withOpacity(0.77),
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7.h),
                            width: Get.width,
                            height: 55.h,
                            child: TextField(
                              controller: controller.addressController,
                              decoration: InputDecoration(
                                counterText: '',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                ),
                              ),
                              maxLines: 1,
                              style: TextStyle(
                                color: ColorConstant.gray1,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                              keyboardType: TextInputType.streetAddress,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  width: Get.width,
                  height: 55.h,
                  margin: EdgeInsets.fromLTRB(0, 14.h, 0, 47.h),
                  child: ElevatedButton(
                    onPressed: () async {
                      if(controller.addressIdx.value == 0){
                        await controller.addAddress(context);
                      }else{
                        await controller.updateAddress(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.primary,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.r))
                        )
                    ),
                    child: Text(
                      controller.addressIdx.value == 0 ? '배송지 추가하기' : '배송지 변경하기',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }

}