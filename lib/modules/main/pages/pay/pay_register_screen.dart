import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/pay/pay_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PayRegisterScreen extends GetView<PayController>{
  final birthMaskFormatter = MaskTextInputFormatter(
    mask: '## / ## / ##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  final bizMaskFormatter = MaskTextInputFormatter(
    mask: '###-##-#####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  final numberMaskFormatter = MaskTextInputFormatter(
    mask: '#### - #### - #### - ####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  final expireMaskFormatter = MaskTextInputFormatter(
    mask: '#### - ##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          controller.reset();
            return Future.value(true);
        },
        child: KeyboardDismissOnTap(
          child: Scaffold(
            extendBody: true,
            appBar: AppBar(
              backgroundColor: ColorConstant.white,
              elevation: 0,
              title: Text(
                '결제수단 등록',
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
            body: Obx(
                    () => Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 16.h,),
                              Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: (){
                                        controller.type.value = 'nor';
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(left: 12.w,right: 15.w),
                                        color: ColorConstant.gray15,
                                        height: 42.h,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '개인카드',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 14.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Image.asset(
                                              controller.type.value == 'nor' ? 'assets/images/ic_check_on.png' : 'assets/images/ic_check_off.png',
                                              width: 16.w,
                                              height: 16.h,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.w,),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: (){
                                        controller.type.value = 'biz';
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(left: 12.w,right: 15.w),
                                        color: ColorConstant.gray15,
                                        height: 42.h,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '법인카드',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 14.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Image.asset(
                                              controller.type.value == 'nor' ? 'assets/images/ic_check_off.png' : 'assets/images/ic_check_on.png',
                                              width: 16.w,
                                              height: 16.h,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30.h,),
                              Text(
                                controller.type.value == 'nor' ? '생년월일' : '사업자 등록번호',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 21.h,),
                              controller.type.value == 'nor' ? Container(
                                width: Get.width,
                                height: 40.h,
                                padding: EdgeInsets.only(left: 12.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(9.r)),
                                  color: ColorConstant.gray15,
                                ),
                                child: TextField(
                                  focusNode: controller.birthFocus,
                                  controller: controller.birthController,
                                  decoration: InputDecoration(
                                      hintText: 'YY/MM/DD',
                                      hintStyle: TextStyle(
                                        color: ColorConstant.gray1,
                                        fontSize: 14.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      counterText: '',
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.zero

                                  ),
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.numberFocus),
                                  inputFormatters: [
                                    birthMaskFormatter
                                  ],
                                  onChanged: (value){
                                    if(value.length != 12){
                                      controller.birthStatus.value = 2;
                                    }else{
                                      controller.birthStatus.value = 1;
                                    }
                                  },
                                ),
                              ) : Container(
                                width: Get.width,
                                height: 40.h,
                                padding: EdgeInsets.only(left: 12.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(9.r)),
                                  color: ColorConstant.gray15,
                                ),
                                child: TextField(
                                  focusNode: controller.bizFocus,
                                  controller: controller.bizController,
                                  decoration: InputDecoration(
                                      hintText: '000-00-00000',
                                      hintStyle: TextStyle(
                                        color: ColorConstant.gray1,
                                        fontSize: 14.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      counterText: '',
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.zero

                                  ),
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.numberFocus),
                                  inputFormatters: [
                                    bizMaskFormatter
                                  ],
                                  onChanged: (value){
                                    if(value.length != 12){
                                      controller.bizStatus.value = 2;
                                    }else{
                                      controller.bizStatus.value = 1;
                                    }
                                  },
                                ),
                              ),
                              controller.type.value == 'nor' ? controller.birthStatus.value == 2 ? Text(
                                '생년월일을 입력해주세요.',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ) : SizedBox() : controller.bizStatus.value == 2 ? Text(
                                '사업자 등록번호를 입력해주세요.',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ) : SizedBox(),
                              SizedBox(height: 30.h,),
                              Text(
                                '카드 번호',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 21.h,),
                              Container(
                                width: Get.width,
                                height: 40.h,
                                padding: EdgeInsets.only(left: 12.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(9.r)),
                                  color: ColorConstant.gray15,
                                ),
                                child: TextField(
                                  focusNode: controller.numberFocus,
                                  controller: controller.numberController,
                                  decoration: InputDecoration(
                                      hintText: '0000 - 0000 - 0000 - 0000',
                                      hintStyle: TextStyle(
                                        color: ColorConstant.gray1,
                                        fontSize: 14.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      counterText: '',
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.zero

                                  ),
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.expireFocus),
                                  inputFormatters: [
                                    numberMaskFormatter
                                  ],
                                  onChanged: (value){
                                    if(value.length != 25){
                                      controller.numberStatus.value = 2;
                                    }else{
                                      controller.numberStatus.value = 1;
                                    }
                                  },
                                ),
                              ),
                              controller.numberStatus.value == 2 ? Text(
                                '카드번호를 입력해주세요.',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ) : SizedBox(),
                              SizedBox(height: 30.h,),
                              Text(
                                '유효 기간',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 21.h,),
                              Container(
                                width: Get.width,
                                height: 40.h,
                                padding: EdgeInsets.only(left: 12.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(9.r)),
                                  color: ColorConstant.gray15,
                                ),
                                child: TextField(
                                  focusNode: controller.expireFocus,
                                  controller: controller.expireController,
                                  decoration: InputDecoration(
                                      hintText: 'YYYY - MM',
                                      hintStyle: TextStyle(
                                        color: ColorConstant.gray1,
                                        fontSize: 14.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      counterText: '',
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.zero

                                  ),
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.passwordFocus),
                                  inputFormatters: [
                                    expireMaskFormatter
                                  ],
                                  onChanged: (value){
                                    if(value.length != 9){
                                      controller.expireStatus.value = 2;
                                    }else{
                                      controller.expireStatus.value = 1;
                                    }
                                  },
                                ),
                              ),
                              controller.expireStatus.value == 2 ? Text(
                                '유효기간을 입력해주세요.',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ) : SizedBox(),
                              SizedBox(height: 30.h,),
                              Text(
                                '카드 비밀번호',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 21.h,),
                              Container(
                                width: Get.width,
                                height: 40.h,
                                padding: EdgeInsets.only(left: 12.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(9.r)),
                                  color: ColorConstant.gray15,
                                ),
                                child: TextField(
                                  focusNode: controller.passwordFocus,
                                  controller: controller.passwordController,
                                  decoration: InputDecoration(
                                      hintText: '앞 2자리',
                                      hintStyle: TextStyle(
                                        color: ColorConstant.gray1,
                                        fontSize: 14.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      counterText: '',
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.zero

                                  ),
                                  maxLines: 1,
                                  maxLength: 2,
                                  obscureText: true,
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value){
                                    if(value.length != 2){
                                      controller.passwordStatus.value = 2;
                                    }else{
                                      controller.passwordStatus.value = 1;
                                    }
                                  },
                                ),
                              ),
                              controller.passwordStatus.value == 2 ? Text(
                                '카드 비밀번호를 입력해주세요.',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ) : SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      child: ElevatedButton(
                        onPressed: (){

                          if(controller.type.value == 'nor' && controller.birthStatus.value != 1){
                            controller.birthStatus.value = 2;
                            return;
                          }

                          if(controller.type.value == 'biz' && controller.bizStatus.value != 1){
                            controller.bizStatus.value = 2;
                            return;
                          }

                          if(controller.numberStatus.value != 1){
                            controller.numberStatus.value = 2;
                            return;
                          }

                          if(controller.expireStatus.value != 1){
                            controller.expireStatus.value = 2;
                            return;
                          }

                          if(controller.passwordStatus.value != 1){
                            controller.passwordStatus.value = 2;
                            return;
                          }

                          controller.registerCard(context);
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
                )
            ),
          ),
        ),
      ),
    );
  }

}