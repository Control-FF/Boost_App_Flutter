import 'package:boostapp/data/models/cart.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  final UserService _userService = Get.find();

  RxList<Cart> cartList = RxList<Cart>([]);

  RxBool checkAll = true.obs;
  RxBool boostAll = true.obs;
  RxBool sellerAll = true.obs;

  //RxBool isPeriod = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> getCartList() async {
    final result = await _userService.getCartList();
    result.fold(
      (failure) => print(failure.message),
      (response) => cartList.value = List<Cart>.from(response.items!.toList(growable: false)),
    );
  }

  Future<void> addCart(context, String itId, int qty) async {
    final result = await _userService.addCart(itId: itId,qty: qty.toString());
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
    if(boostAll.value){
      for(int i=0; i<cartList.length; i++){
        updateCheck(i,boostAll.value);
      }
    }
  }

  int getSumPrice(){
    int sumPrice = 0;

    for(int i = 0; i<cartList.length; i++){
      sumPrice += cartList[i].ct_price;
    }

    return sumPrice;
  }
}