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

  Future<void> deleteCart(int ctId) async {
    final result = await _userService.deleteCart(ctId: ctId.toString(),);
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
        if(type == 'oneTouch'){
          showOneTouchPopup(context);
        }else{
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            elevation: 6.0,
            behavior: SnackBarBehavior.floating,
            content: Text(
              '장바구니에 추가되었습니다.',
              style: TextStyle(color: Colors.white),
            ),
          ));
        }

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

  Future<void> addOrder() async {
    List<int> ctItems = List.empty(growable: true);
    for(int i=0; i<cartList.length; i++){
      ctItems.add(cartList[i].ct_id);
    }

    var map = <String, dynamic>{};
    map.addAll(
      {'mb_id' : '','ct_items' : ctItems,'cp_no' : 0,'use_point' : 0,'location' : '','accesscode' : '','notes' : ''},
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

  int getShippingPrice(){
    int shippingPrice = 0;

    for(int i=0; i<cartList.length; i++){
      if(cartList[i].isCheck){
        int scType = cartList[i].it_sc_type;
        int scPrice = cartList[i].it_sc_price;
        int scQty = cartList[i].it_sc_qty;
        int sendCost = cartList[i].sendcost;

        if(scType == 1){
          continue;
        }else if(scType == 2){
          if(getSumPrice() < 30000){
            shippingPrice = Constants.shippingPrice;
          }
        }else if(scType == 3){
          shippingPrice = Constants.shippingPrice;
        }else if(scType == 4){

        }
      }
      shippingPrice += cartList[i].ct_price * cartList[i].ct_qty;
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

  void showOneTouchPopup(context){
    getCartList();
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