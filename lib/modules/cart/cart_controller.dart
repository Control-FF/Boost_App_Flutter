import 'package:boostapp/data/models/cart.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
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
              cartList();
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
        sumPrice += cartList[i].ct_price;
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
}