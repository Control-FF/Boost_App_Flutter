import 'dart:io';
import 'dart:math';

import 'package:boostapp/data/models/review.dart';
import 'package:dio/dio.dart' as dio;

import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/product_review.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';


class ReviewController extends GetxController{
  final UserService _userService = Get.find();
  final StorageService _storageService = Get.find();


  late PageController pageController;
  RxInt currentIndex = 0.obs;

  RxList<Review> reviewList = <Review>[].obs;

  TextEditingController editContentsController = TextEditingController();
  RxInt editRating = 0.obs;
  RxString editContents = ''.obs;
  RxList<File?> editImgList = RxList<File?>([]);

  int ctId = 0;
  RxString itName = ''.obs;
  RxString ioName = ''.obs;
  RxString name = ''.obs;
  RxString type = ''.obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();

    pageController = PageController(initialPage: 0);
    pageController.addListener(() {
      currentIndex.value = pageController.page!.toInt();
    });
    if (Get.arguments != null) {
      ctId = Get.arguments['ctId'];
      itName.value = Get.arguments['itName'];
      type.value = Get.arguments['type'];

      if(type.value == 'register'){
        editRating = 0.obs;
        editContents = ''.obs;
        editImgList = RxList<File?>([]);
      }
    }else{
      editRating = 0.obs;
      editContents = ''.obs;
      editImgList = RxList<File?>([]);
    }
    name.value = _storageService.getName() ?? '';

    getReview();
  }

  Future<void> getReview() async {
    final result = await _userService.getReview();
    result.fold(
      (failure) => print(failure.message),
      (response){
        reviewList.value = List<Review>.from(response.items!.toList(growable: false));
        editImgList.clear();
      },
    );
  }

  Future<void> registerReview(context) async {
    String subject = '리뷰제목';
    String contents = editContentsController.text;

    final List<dio.MultipartFile> _files = [];

    for(int i=0; i<editImgList.length; i++){
      _files.add(await dio.MultipartFile.fromFile(editImgList[i]!.path),);
    }

    final result = await _userService.registerReview(ctId: ctId.toString(),subject: subject,contents: contents,score: editRating.value.toString(),reviewImg: _files);

    result.fold(
      (failure){
        isLoading.value = false;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            failure.message,
            style: TextStyle(color: Colors.white),
          ),
        ));
      },
      (response){
        isLoading.value = false;
        showReviewPopup(context, 'register',0);
      },
    );
  }

  Future<void> updateReview(context) async {
    String subject = '리뷰제목';
    String contents = editContentsController.text;

    final List<dio.MultipartFile> _files = [];

    for(int i=0; i<editImgList.length; i++){
      _files.add(await dio.MultipartFile.fromFile(editImgList[i]!.path),);
      print(editImgList[i]!.path.toString());
    }

    final result = await _userService.updateReview(ctId: ctId.toString(),subject: subject,contents: contents,score: editRating.value.toString(),reviewImg: _files);

    result.fold(
      (failure){
        isLoading.value = false;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            failure.message,
            style: TextStyle(color: Colors.white),
          ),
        ));
      },
      (response){
        isLoading.value = false;
        showReviewPopup(context, 'update',0);
      },
    );
  }

  Future<void> deleteReview(context,index) async {

    final result = await _userService.deleteReview(isId: reviewList[index].is_id.toString());

    result.fold(
      (failure) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        elevation: 6.0,
        behavior: SnackBarBehavior.floating,
        content: Text(
          failure.message,
          style: TextStyle(color: Colors.white),
        ),
      )),
      (response){
        getReview();
      },
    );
  }

  List<Widget> getReviewRating(double rating){
    List<Widget> ratingList = [];
    for(int i=1; i<=5; i++){
      if(i <= rating){
        ratingList.add(
            Image.asset('assets/images/ic_rating_fill.png',width: 14.w,height: 14.h,)
        );
      }else{
        ratingList.add(
            Image.asset('assets/images/ic_rating_empty.png',width: 14.w,height: 14.h,)
        );
      }

      if(i != 5){
        ratingList.add(
            SizedBox(width: 5,)
        );
      }
    }

    return ratingList;
  }

  Future<File> urlToFile(String imageUrl) async {
// generate random number.
    var rng = new Random();
// get temporary directory of device.
    Directory tempDir = await getTemporaryDirectory();
// get temporary path from temporary directory.
    String tempPath = tempDir.path;
// create a new file in temporary path with random file name.
    File file = new File('$tempPath'+ (rng.nextInt(100)).toString() +'.png');
// call http.get method and pass imageUrl into it to get response.
    http.Response response = await http.get(Uri.parse(imageUrl));
// write bodyBytes received in response to file.
    await file.writeAsBytes(response.bodyBytes);
// now return the file which is created with random name in
// temporary directory and image bytes from response is written to // that file.
    return file;
  }

  void showReviewPopup(context,type,index){
    String title = '';
    if(type == 'update'){
      title = '리뷰를 수정했습니다!';
    }else if(type == 'delete'){
      title = '정말 리뷰를 삭제하시겠습니까?';
    }else if(type == 'register'){
      title = '리뷰를 작성했습니다!';
    }

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
                        title,
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
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 1.w, color: ColorConstant.primary),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              onPressed: (){
                                Get.back();

                                if(type == 'update' || type == 'register'){
                                  Get.back();
                                }
                              },
                              child: Text(
                                '취소',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          Container(
                            width: 50.w,
                            height: 23.h,
                            child: ElevatedButton(
                              onPressed: (){
                                Get.back();

                                if(type == 'update' || type == 'register'){
                                  Get.back();
                                  getReview();
                                }else if(type == 'delete'){
                                  deleteReview(context,index);
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

  onWillPop(BuildContext context) {
    if(isLoading.value){
      return false;
    }
    return true;
  }
}