import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/cart.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  final UserService _userService = Get.find();

  RxList<CartItem> cartList = RxList<CartItem>([]);

  RxBool checkAll = true.obs;
  RxBool boostAll = true.obs;
  RxBool sellerAll = true.obs;

  RxInt odId = 0.obs;

  //RxBool isPeriod = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> getCartList() async {
    final result = await _userService.getCartList();
    result.fold(
      (failure) => print(failure.message),
      (response) => cartList.value = List<CartItem>.from(response.data!.items!.toList(growable: false)),
    );
  }

  Future<void> addCart(context, String itId, int qty) async {
    final result = await _userService.addCart(itId: itId,qty: qty.toString(),ioNo: '');
    result.fold(
      (failure) => print(failure.message),
      (response) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            '장바구니에 추가되었습니다.',
            style: TextStyle(color: Colors.white),
          ),
        ));
        getCartList();
      },
    );
  }

  Future<void> addOrder() async {
    List<int> ctItems = List.empty(growable: true);
    for(int i=0; i<cartList.length; i++){
      ctItems.add(cartList[i].ct_id);
    }

    var map = <String, dynamic>{};
    map.addAll(
      {'mb_id' : '','ct_items' : ctItems,'cp_no' : '','use_point' : '','location' : '','accesscode' : '','notes' : ''},
    );

    final result = await _userService.addOrder(data: map);
    result.fold(
          (failure) => print(failure.message),
          (response) async {
            String odId = response.od_id;

            var res = await Get.toNamed(AppRoutes.orderConfirm,arguments: {'odId' : odId});

            if(res != null){
              getCartList();
            }
          },
    );
  }

  void updateCheck(index,isCheck){
    cartList[index] = cartList[index].copyWith(isCheck: isCheck);

    int checkCnt = 0;

    for(int i = 0; i<cartList.length; i++){
      if(cartList[i].isCheck){
        checkCnt++;
      }
    }
    boostAll.value = checkCnt == cartList.length;
  }

  void boostAllCheck(){
    for(int i=0; i<cartList.length; i++){
      cartList[i] = cartList[i].copyWith(isCheck: boostAll.value);
    }
  }

  int getSumPrice(){
    int sumPrice = 0;

    for(int i = 0; i<cartList.length; i++){
      if(cartList[i].isCheck){
        sumPrice += cartList[i].ct_price * cartList[i].ct_qty;
      }
    }

    return sumPrice;
  }

  int getCheckCnt(){
    int checkCnt = 0;

    for(int i = 0; i<cartList.length; i++){
      if(cartList[i].isCheck){
        checkCnt++;
      }
    }

    return checkCnt;
  }

  void showOneTouchPopup(context){
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
              height: 110.h,
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '원터치 상품이 추가되었습니다.',
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
}