import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:boostapp/modules/main/pages/delivery_screen.dart';
import 'package:boostapp/modules/main/pages/event_screen.dart';
import 'package:boostapp/modules/main/pages/gift_screen.dart';
import 'package:boostapp/modules/main/pages/home_screen.dart';
import 'package:boostapp/modules/main/pages/my_page_screen.dart';
import 'package:intl/intl.dart';

class MainController extends GetxController{
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final StorageService _storageService = Get.find();
  final UserService _userService = Get.find();
  final ShopService _shopService = Get.find();

  DateTime? currentBackPressTime;
  RxInt currentIndex = 0.obs;

  RxList pages = [].obs;

  RxList categoryList = [].obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    pages.value = [
      {
        'page' : HomeScreen(),
      },
      {
        'page' : DeliveryScreen(),
      },
      {
        'page' : GiftScreen(),
      },
      {
        'page' : EventScreen(),
      },
      {
        'page' : MyPageScreen(),
      },
    ];

    await Future.delayed(Duration(milliseconds: 500));

    await getAddressCheck();
    await getCategoryList('');

    String popupDate = _storageService.getPopupDate();

    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('yyyy-MM-dd');
    String strToday = formatter.format(now);

    if(popupDate != strToday){
      showAdBottomSheet();
    }
  }

  Future<void> getAddressCheck() async {
    final result = await _userService.getAddressList();
    result.fold(
        (failure) => print(failure.message),
        (response) => {
          if(response.items!.isEmpty){
            Get.toNamed(AppRoutes.addressScreen)
          }
        },
    );
  }

  Future<void> getCategoryList(String caId) async {

    final result = await _shopService.getCategoryList(caId: caId);
    result.fold(
          (failure) => print(failure.message),
          (response)  {
            if(caId == ''){
              categoryList.value = response.items!;
            }else{
              List tempList = [];

              for(int i=0; i<categoryList.length; i++){
                tempList.add(categoryList[i]);

                if(categoryList[i].ca_id == caId){
                  for(int j=0; j<response.items!.length; j++){
                    tempList.add(response.items![j]);
                  }
                }
              }

              categoryList.value = tempList;
            }
          },
    );
  }

  bool isChild(int index){
    return categoryList[index].sub_flag == "true" && categoryList[index].ca_id.length == 2;
  }

  bool isExpand(int index){
    bool isExpand = false;
    try{
      if(categoryList[index].ca_id.length != categoryList[index+1].ca_id.length){
        isExpand = true;
      }else{
        isExpand = false;
      }
    }catch(e){
      isExpand = false;
    }

    return isExpand;
  }

  void setFold(int index){
    String startCaId = categoryList[index].ca_id.substring(0,2);
    for(int i = index+1; i < categoryList.length; i++){
      if(startCaId == categoryList[i].ca_id.substring(0,2)){
        categoryList.removeAt(i);
        i--;
      }
    }
  }

  onWillPop(BuildContext context) {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;

      final snackBar = SnackBar(
        elevation: 6.0,
        behavior: SnackBarBehavior.floating,
        content: Text(
          "뒤로가기를 한번더 눌리시면 앱이 종료됩니다.",
          style: TextStyle(color: Colors.white),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      return false;
    } else {
      return true;
    }
  }

  void selectPage(int index){
    currentIndex.value = index;
  }

  void showAdBottomSheet(){
    Get.bottomSheet(
      Wrap(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)
                ),
                child: Image.asset(
                  'assets/images/sample_bottom_banner.jpg',
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 49.h,
                      child: ElevatedButton(
                        onPressed: (){
                          Get.back();
                          _storageService.savePopupDate();
                        },
                        child: Text(
                          '오늘 그만보기',
                          style: TextStyle(
                            color: ColorConstant.red2,
                            fontSize: 13.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 116.w,
                    height: 49.h,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.back();
                      },
                      child: Text(
                        '닫기',
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontSize: 13.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstant.red2,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          )
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
      backgroundColor: ColorConstant.white
    );
  }
}