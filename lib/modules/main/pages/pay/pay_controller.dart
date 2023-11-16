import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PayController extends GetxController with StateMixin{
  final UserService _userService = Get.find();

  TextEditingController birthController = TextEditingController();
  TextEditingController bizController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController expireController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cardNameController = TextEditingController();

  FocusNode birthFocus = FocusNode();
  FocusNode bizFocus = FocusNode();
  FocusNode numberFocus = FocusNode();
  FocusNode expireFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  RxInt birthStatus = 0.obs;
  RxInt bizStatus = 0.obs;
  RxInt numberStatus = 0.obs;
  RxInt expireStatus = 0.obs;
  RxInt passwordStatus = 0.obs;

  RxString type = 'nor'.obs;  //nor:일반, biz:사업자
  RxString orderType = ''.obs;

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      orderType.value = Get.arguments['type'];
    }

    getCardList();
  }

  Future<void> getCardList() async {
    final result = await _userService.getCardList();
    result.fold(
      (failure) {
        change(null, status: RxStatus.error(failure.message));
      },
      (response) {
        if(response.items!.isEmpty){
          change(response, status: RxStatus.empty());
        }else{
          change(response, status: RxStatus.success());
        }
      },
    );
  }

  Future<void> deleteCard(int cdNo) async {
    final result = await _userService.deleteCard(cdNo: cdNo);
    result.fold(
      (failure) => print(failure.message),
      (response) => getCardList(),
    );
  }

  Future<void> updateCard(int cdNo, String subject) async {
    final result = await _userService.updateCard(cdNo: cdNo,subject: subject);
    result.fold(
          (failure) => print(failure.message),
          (response) => getCardList(),
    );
  }

  Future<void> registerCard(context) async {
    final result = await _userService.registerCard(
      type: type.value,
      number: numberController.text.replaceAll(" ",""),
      expired: expireController.text.replaceAll(" ",""),
      pw: passwordController.text,
      birth: type.value == 'nor' ? birthController.text.replaceAll(" ","").replaceAll("/","") : null,
      bizNumber: type.value == 'biz' ? bizController.text.replaceAll(" ", "").replaceAll("-","") : null
    );
    result.fold(
          (failure) {
            _showPopup(context,'error',failure.message);
          },
          (response) {
            _showPopup(context,'success','카드가 등록되었습니다.');
          },
    );
  }

  void reset(){
    type.value = 'nor';

    birthController.text = '';
    bizController.text = '';
    numberController.text = '';
    expireController.text = '';
    passwordController.text = '';

    birthStatus.value = 0;
    bizStatus.value = 0;
    numberStatus.value = 0;
    expireStatus.value = 0;
    passwordStatus.value = 0;
  }

  void _showPopup(context, type, title){
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
                        title,
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
                            child: ElevatedButton(
                              onPressed: (){
                                Get.back();

                                if(type == 'success'){
                                  Get.back(result: 'OK');
                                }
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

  void showCardNamePopup(context, cdNo, name){
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
                      Container(
                        width: 166.w,
                        height: 25.h,
                        padding: EdgeInsets.only(left: 12.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9.r)),
                          color: ColorConstant.gray15,
                        ),
                        child: TextField(
                          controller: cardNameController,
                          decoration: InputDecoration(
                              hintText: '카드이름',
                              hintStyle: TextStyle(
                                color: ColorConstant.gray1,
                                fontSize: 12.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
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
                            fontSize: 12.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          onSubmitted: (_) => FocusManager.instance.primaryFocus?.unfocus(),

                        ),
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
                          SizedBox(width: 8.w,),
                          Container(
                            width: 79.w,
                            height: 28.h,
                            child: ElevatedButton(
                              onPressed: (){
                                if(cardNameController.text.isEmpty){
                                  return;
                                }

                                Get.back();
                                updateCard(cdNo,cardNameController.text);
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
                                '카드이름 변경',
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
    cardNameController.text = name;
  }
}