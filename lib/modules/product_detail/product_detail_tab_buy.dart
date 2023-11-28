import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/product_detail/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailTabBuy extends GetView<ProductDetailController>{
  @override
  Widget build(BuildContext context) {

    return Obx(() => ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              bool isExpand = controller.buyInfoList[index].isExpand;
              controller.buyInfoList[index] = controller.buyInfoList[index].copyWith(isExpand: !isExpand);

            },
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  height: 50.h,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.buyInfoList[index].title,
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Obx(() => controller.buyInfoList[index].isExpand
                          ? Image.asset('assets/images/ic_up_black.png',width: 14.w,height: 7.h,)
                          : Image.asset('assets/images/ic_down_black.png',width: 14.w,height: 7.h,))
                    ],
                  ),
                ),
                Divider(
                  height: 1.h,
                  thickness: 1,
                  color: ColorConstant.gray17,
                ),
                controller.buyInfoList[index].isExpand
                    ? Image.asset(controller.buyInfoList[index].contents,width: Get.width,)
                    : SizedBox()
              ],
            ),
          );
        },
        itemCount: controller.buyInfoList.length
    ));
  }

}