import 'dart:io';
import 'dart:math';
import 'package:dio/dio.dart' as dio;
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/cs.dart';
import 'package:boostapp/data/models/faq.dart';
import 'package:boostapp/data/models/notice.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InquiryController extends GetxController{
  final ShopService _shopService = Get.find();

  TextEditingController searchController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentsController = TextEditingController();
  FocusNode titleFocusNode = FocusNode();
  FocusNode contentsFocusNode = FocusNode();

  RxInt selectIndex = 0.obs;
  RxList<CS> inquiryList = (List<CS>.of([])).obs;
  RxList<FAQ> faqList = (List<FAQ>.of([])).obs;
  RxString type = 'list'.obs; //list : 목록, register : 등록, update: 수정
  RxList<File?> imgList = RxList<File?>([]);

  @override
  void onInit() {
    super.onInit();

    getInquiryList();
    getFAQList();
  }

  Future<void> getInquiryList() async {
    String searchText = searchController.text;
    final result = await _shopService.getCS(keyword: searchText);
    result.fold(
      (failure) => print(failure.message),
      (response) => inquiryList.value = List<CS>.from(response.items!.toList(growable: false)),
    );
  }

  Future<void> getFAQList() async {
    final result = await _shopService.getFAQ(isHtml: 'false');
    result.fold(
      (failure) => print(failure.message),
      (response) => faqList.value = List<FAQ>.from(response.items!.toList(growable: false)),
    );
  }

  Future<void> writeInquiry(BuildContext context) async {
    String subject = titleController.text;
    String contents = contentsController.text;

    final List<dio.MultipartFile> _files = [];

    for(int i=0; i<imgList.length; i++){
      _files.add(await dio.MultipartFile.fromFile(imgList[i]!.path),);
    }

    final result = await _shopService.writeInquiry(subject: subject, contents: contents, img: _files);
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
        titleController.text = '';
        contentsController.text = '';
        imgList.clear();
        showPopup(context,'register');
      },
    );
  }

  Future<void> updateInquiry(BuildContext context) async {
    int qaId = selectIndex.value;
    String subject = titleController.text;
    String contents = contentsController.text;

    final List<dio.MultipartFile> _files = [];

    for(int i=0; i<imgList.length; i++){
      _files.add(await dio.MultipartFile.fromFile(imgList[i]!.path),);
    }

    final result = await _shopService.updateInquiry(qaId: qaId, subject: subject, contents: contents, img: _files);
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
        titleController.text = '';
        contentsController.text = '';
        imgList.clear();
        showPopup(context,'update');
      },
    );
  }

  Future<void> deleteInquiry(BuildContext context, int qaId) async {
    final result = await _shopService.deleteInquiry(qaId: qaId);
    result.fold(
      (failure) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        elevation: 6.0,
        behavior: SnackBarBehavior.floating,
        content: Text(
          failure.message,
          style: TextStyle(color: Colors.white),
        ),
      )),
      (response) => showPopup(context,'delete'),
    );
  }

  void showPopup(context,inquiryType){
    String title = '';
    if(inquiryType == 'register'){
      title = '문의가 등록되었습니다.';
    }else if(inquiryType == 'update'){
      title = '문의가 수정되었습니다.';
    }else if(inquiryType == 'delete'){
      title = '문의가 삭제되었습니다.';
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
                            child: ElevatedButton(
                              onPressed: (){
                                Get.back();
                                type.value = 'list';
                                getInquiryList();
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
}