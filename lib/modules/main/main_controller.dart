import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/main.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/modules/main/pages/bnv_gift_screen.dart';
import 'package:boostapp/modules/main/pages/bnv_home_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:boostapp/modules/main/pages/bnv_delivery_screen.dart';
import 'package:boostapp/modules/main/pages/bnv_cart_screen.dart';
import 'package:boostapp/modules/main/pages/bnv_home_screen.dart';
import 'package:boostapp/modules/main/pages/bnv_my_page_screen.dart';
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
  RxList categoryFirstList = [].obs;

  RxList<BannerList> mainBannerList = <BannerList>[].obs;
  RxList<BannerList> bottomBannerList = <BannerList>[].obs;
  RxList<CategoryData> mainCategoryList = <CategoryData>[].obs;
  RxList<ProductItem> mainMdList = <ProductItem>[].obs;
  RxList<ProductItem> mainRecommendList = <ProductItem>[].obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    pages.value = [
      {
        'page' : BnvHomeScreen(),
      },
      {
        'page' : BnvDeliveryScreen(),
      },
      {
        'page' : BnvGiftScreen(),
      },
      {
        'page' : BnvCartScreen(),
      },
      {
        'page' : BnvMyPageScreen(),
      },
    ];

    await Future.delayed(Duration(milliseconds: 500));

    //await getAddressCheck();
    await getCategoryList('');
    await getCategoryFirstList();
    await getShopMain();
  }

  Future<void> getShopMain() async {

    final result = await _shopService.getShopMain();
    result.fold(
      (failure) => print(failure.message),
      (response){
        mainBannerList.value = response.data!.banner!.mainBanner!;
        bottomBannerList.value = response.data!.banner!.bottomBanner!;
        mainCategoryList.value = response.data!.categoryData!;
        mainMdList.value = response.data!.mdItems!;
        mainRecommendList.value = response.data!.recommendItems!;

        if(bottomBannerList.isNotEmpty){
          String popupDate = _storageService.getPopupDate();

          DateTime now = DateTime.now();
          DateFormat formatter = DateFormat('yyyy-MM-dd');
          String strToday = formatter.format(now);

          if(popupDate != strToday){
            showAdBottomSheet();
          }
        }
      },
    );
  }

  List<Widget> getMainBanner(){
    List<Widget> banner = [];

    for(int i=0; i<mainBannerList.length; i++){
      banner.add(
        GestureDetector(
          onTap: (){
            String bnUrl = mainBannerList[i].bn_url;

            if(bnUrl != '' && bnUrl.startsWith('http')){
              String scheme = bnUrl.replaceAll("http://", '').replaceAll("https://", '').split('/')[0];
              String data = bnUrl.replaceAll("http://", '').replaceAll("https://", '').split('/')[1];

              if(scheme == 'category'){
                Get.toNamed(AppRoutes.category,arguments: {
                  'category':'',
                  'caId':data,
                });
              }else if(scheme == 'item'){
                Get.toNamed(AppRoutes.productDetailScreen,arguments: {
                  'productId' : data
                });
              }
            }
          },
          child: Container(
            width: Get.width,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16)
              ),
              child: Image.network(
                mainBannerList[i].bn_img,
              ),
            ),
          ),
        )
      );
    }
    return banner;
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

  Future<void> getCategoryFirstList() async {

    final result = await _shopService.getCategoryList(caId: '');
    result.fold(
      (failure) => print(failure.message),
      (response) => categoryFirstList.value = response.items!,
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
    if(scaffoldKey.currentState!.isDrawerOpen){
      scaffoldKey.currentState!.closeDrawer();
      return;
    }
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
    if(index == 2){
      return;
    }

    if(index == 0){
      Get.find<HomeController>().clear();
    }

    currentIndex.value = index;
  }

  void showAdBottomSheet(){
    Get.bottomSheet(
      Wrap(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: (){
                  String bnUrl = bottomBannerList[0].bn_url;

                  if(bnUrl != '' && bnUrl.startsWith('http')){
                    String scheme = bnUrl.replaceAll("http://", '').replaceAll("https://", '').split('/')[0];
                    String data = bnUrl.replaceAll("http://", '').replaceAll("https://", '').split('/')[1];

                    if(scheme == 'category'){
                      Get.toNamed(AppRoutes.category,arguments: {
                        'category':'',
                        'caId':data,
                      });
                    }else if(scheme == 'item'){
                      Get.toNamed(AppRoutes.productDetailScreen,arguments: {
                        'productId' : data
                      });
                    }
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                  ),
                  child: Image.network(
                    bottomBannerList[0].bn_img,
                  ),
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
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero
                            )
                        ),
                        child: Text(
                          '오늘 그만보기',
                          style: TextStyle(
                            color: ColorConstant.red2,
                            fontSize: 13.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
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
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstant.red2,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          )
                      ),
                      child: Text(
                        '닫기',
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontSize: 13.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
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