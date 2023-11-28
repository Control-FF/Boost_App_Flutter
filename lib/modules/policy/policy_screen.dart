import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/policy/policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PolicyScreen extends GetView<PolicyController>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorConstant.white,
            elevation: 0,
            title: Obx(() => Text(
              controller.items.isNotEmpty ? controller.items[0].co_subject : '',
              style: TextStyle(
                color: ColorConstant.black2,
                fontSize: 16.sp,
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w700,
              ),
            )),
            centerTitle: true,
            leading: IconButton(
              onPressed: (){
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded,color: ColorConstant.black,),
            ),
          ),
          backgroundColor: ColorConstant.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Obx(() => Html(
                data: controller.items.isNotEmpty ? controller.items[0].co_content : ''
            )),
          )
      ),
    );
  }

}