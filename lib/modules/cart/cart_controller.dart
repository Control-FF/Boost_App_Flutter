import 'dart:collection';

import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/cart.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/modules/main/pages/buy/buy_controller.dart';
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
  List<int> addCartItems = [];

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

  Future<void> updateCart(int ctId, int qty) async {
    final result = await _userService.updateCart(ctId: ctId.toString(), qty: qty.toString());
    result.fold(
      (failure) => print(failure.message),
      (response) => getCartList(),
    );
  }

  Future<void> deleteCart(List<int> items) async {
    var map = <String, dynamic>{};
    map.addAll({'ct_id' : items});

    final result = await _userService.deleteCart(data: map);
    result.fold(
      (failure) => print(failure.message),
      (response) => getCartList(),
    );
  }

  Future<void> deleteSoldOutCart() async {

    final result = await _userService.deleteSoldOutCart();
    result.fold(
      (failure) => print(failure.message),
      (response) => getCartList(),
    );
  }


  Future<void> addCart(context, String itId, List<dynamic> ctItems, {String type = ''}) async {
    var map = <String, dynamic>{};
    map.addAll(
        {
          'it_id' : itId,
          'items' : ctItems,
        }
    );

    final result = await _userService.addCart(data: map);
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

  Future<void> getDirectCartList() async {
    final result = await _userService.getCartList();
    result.fold(
          (failure) => print(failure.message),
          (response){
            cartList.value = List<CartItem>.from(response.data!.items!.toList(growable: false));

            Get.toNamed(AppRoutes.orderConfirm,arguments: {
              'items' : addCartItems
            });
          },
    );
  }

  Future<void> directBuy(context, String itId, List<dynamic> ctItems) async {
    var map = <String, dynamic>{};
    map.addAll(
        {
          'it_id' : itId,
          'items' : ctItems,
        }
    );

    final result = await _userService.addCart(data: map);
    result.fold(
      (failure) => print(failure.message),
      (response) async {
        List<dynamic> tmpItems = [];

        addCartItems = response.items!;

        for(int i=0; i<addCartItems.length; i++){
          updateCart(addCartItems[i],ctItems[i]['ct_qty']);
          tmpItems.add({
            'ct_id' : addCartItems[i],
            'ct_qty' : ctItems[i]['ct_qty']
          });
        }

        getDirectCartList();
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

  int getShippingPrice(){
    int shippingPrice = 0;

    List<String> tmpList = [];

    for(int i=0; i<cartList.length; i++){
      if(tmpList.contains(cartList[i].it_id)){
        continue;
      }

      if(cartList[i].isCheck){
        int scType = cartList[i].it_sc_type;

        if(scType == 1){
          continue;
        }else if(scType == 2){

          if(cartList[i].ct_price * cartList[i].ct_qty < 30000){
            shippingPrice += Constants.shippingPrice;
          }
        }else if(scType == 3){
          shippingPrice += Constants.shippingPrice;
        }else if(scType == 4){
          shippingPrice += cartList[i].it_sc_price * (cartList[i].ct_qty.toDouble() / cartList[i].it_sc_qty.toDouble()).ceil();
        }
        if(!tmpList.contains(cartList[i].it_id)){
          tmpList.add(cartList[i].it_id);
        }
      }
    }

    return shippingPrice;
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
}