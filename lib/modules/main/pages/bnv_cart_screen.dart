import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/cart/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BnvCartScreen extends StatefulWidget{

  @override
  _BnvCartScreenState createState() => _BnvCartScreenState();
}

class _BnvCartScreenState extends State<BnvCartScreen>{
  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    controller.getCartList();

    return Scaffold(
      extendBody: true,
      backgroundColor: ColorConstant.white,
      appBar: AppBar(
        backgroundColor: ColorConstant.white,
        elevation: 0,
        title: Text(
          '장바구니',
          style: TextStyle(
            color: ColorConstant.black2,
            fontSize: 16.sp,
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                slivers: [
                  Obx(() => SliverList(
                      delegate: SliverChildListDelegate(
                          [
                            /* 정기배송 삭제
                              Padding(
                                padding: EdgeInsets.fromLTRB(30.w, 10.h, 30.w, 22.h),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          controller.isPeriod.value = false;
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: controller.isPeriod.value ? ColorConstant.gray1 : ColorConstant.primary,
                                            elevation: 0,
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.zero,
                                            ),
                                            minimumSize: Size(154.w,41.h)
                                        ),
                                        child: Text(
                                          '일반 배송',
                                          style: TextStyle(
                                            color: ColorConstant.white,
                                            fontSize: 15.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 2.w,),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          controller.isPeriod.value = true;
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: !controller.isPeriod.value ? ColorConstant.gray1 : ColorConstant.primary,
                                            elevation: 0,
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.zero
                                            ),
                                            minimumSize: Size(154.w,41.h)
                                        ),
                                        child: Text(
                                          '정기 배송',
                                          style: TextStyle(
                                            color: ColorConstant.white,
                                            fontSize: 15.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(30.w, 0, 30.w, 20.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 20.w,
                                          height: 20.h,
                                          child: Checkbox(
                                            side: BorderSide(
                                                width: 1.w,
                                                color: ColorConstant.gray7
                                            ),
                                            value: controller.checkAll.value,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            checkColor: ColorConstant.white,
                                            activeColor: ColorConstant.primary,
                                            onChanged: (bool? value){
                                              controller.checkAll.value = value!;
                                              controller.allCheck();
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 4.w,),
                                        GestureDetector(
                                          onTap: (){
                                            controller.checkAll.value = !controller.checkAll.value;
                                            controller.allCheck();
                                          },
                                          child: Text(
                                            '전체선택(X/X)',
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 14.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                            onPressed: (){

                                            },
                                            style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(80.w,20.h)
                                            ),
                                            child: Text(
                                              '품절상품 삭제',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                        ),
                                        SizedBox(
                                          height: 16.h,
                                          child: VerticalDivider(
                                            color: ColorConstant.black,
                                            width: 1.w,
                                            thickness: 1.w,
                                          ),
                                        ),
                                        TextButton(
                                            onPressed: (){

                                            },
                                            style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(80.w,20.h)
                                            ),
                                            child: Text(
                                              '선택상품 삭제',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                               */
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              padding: EdgeInsets.fromLTRB(11.w, 15.h, 11.w, 22.h),
                              decoration: BoxDecoration(
                                  border: Border.all(color: ColorConstant.gray20.withOpacity(0.5),width: 0.5)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 20.w,
                                        height: 20.h,
                                        child: Checkbox(
                                          side: BorderSide(
                                              width: 1.w,
                                              color: ColorConstant.gray7
                                          ),
                                          value: controller.boostAll.value,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          checkColor: ColorConstant.white,
                                          activeColor: ColorConstant.primary,
                                          onChanged: (bool? value){
                                            controller.boostAll.value = value!;
                                            controller.boostAllCheck();
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 4.w,),
                                      GestureDetector(
                                        onTap: (){
                                          controller.boostAll.value = !controller.boostAll.value;
                                          controller.boostAllCheck();
                                        },
                                        child: Text(
                                          '부스트 배송 (2/${controller.cartList.length})',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 14.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.cartList.length,
                                      itemBuilder: (context,index){
                                        return Container(
                                          height: 68.h,
                                          margin: EdgeInsets.only(top: 24.h),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 20.w,
                                                height: 20.h,
                                                margin: EdgeInsets.only(top: 4.h),
                                                child: Checkbox(
                                                  side: BorderSide(
                                                    width: 1.w,
                                                    color: ColorConstant.gray7,
                                                  ),
                                                  value: controller.cartList[index].isCheck,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(6),
                                                  ),
                                                  checkColor: ColorConstant.white,
                                                  activeColor: ColorConstant.primary,
                                                  onChanged: (bool? value){
                                                    controller.updateCheck(index,value);
                                                  },
                                                ),
                                              ),
                                              SizedBox(width: 6.w,),
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                                                child: Image.network(
                                                  controller.cartList[index].img,width: 68.w,height: 68.h,
                                                ),
                                              ),
                                              SizedBox(width: 10.w,),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            controller.cartList[index].it_name,
                                                            style: TextStyle(
                                                              color: ColorConstant.black,
                                                              fontSize: 14.sp,
                                                              fontFamily: 'Noto Sans KR',
                                                              fontWeight: FontWeight.w400,
                                                            ),
                                                            maxLines: 1,
                                                            overflow: TextOverflow.ellipsis,
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.only(top: 2.h),
                                                          child: GestureDetector(
                                                            onTap: (){

                                                            },
                                                            child: Icon(Icons.close_sharp,color: ColorConstant.black,size: 14),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(height: 2.h,),
                                                    Container(
                                                      width: 46.w,
                                                      height: 16.h,
                                                      alignment: Alignment.center,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: ColorConstant.accent, width: 1),
                                                          borderRadius: BorderRadius.all(Radius.circular(4))
                                                      ),
                                                      child: Text(
                                                        '부스트배송',
                                                        style: TextStyle(
                                                          color: ColorConstant.accent,
                                                          fontSize: 8.sp,
                                                          fontFamily: 'Noto Sans KR',
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: (){

                                                              },
                                                              child: Container(
                                                                width: 20.w,
                                                                height: 20.h,
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(width: 1,color: ColorConstant.gray2)
                                                                ),
                                                                child: Icon(Icons.remove,color: ColorConstant.gray19,size: 10,),
                                                              ),
                                                            ),
                                                            SizedBox(width: 20,),
                                                            Text(
                                                              controller.cartList[index].ct_qty.toString(),
                                                              style: TextStyle(
                                                                color: ColorConstant.black,
                                                                fontSize: 14.sp,
                                                                fontFamily: 'Noto Sans KR',
                                                                fontWeight: FontWeight.w500,
                                                              ),
                                                            ),
                                                            SizedBox(width: 20,),
                                                            GestureDetector(
                                                              onTap: (){

                                                              },
                                                              child: Container(
                                                                width: 20.w,
                                                                height: 20.h,
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(width: 1,color: ColorConstant.gray2)
                                                                ),
                                                                child: Icon(Icons.add,color: ColorConstant.gray19,size: 10,),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Text(
                                                          '${Constants.numberAddComma(controller.cartList[index].ct_price*controller.cartList[index].ct_qty)}원',
                                                          style: TextStyle(
                                                            color: ColorConstant.black,
                                                            fontSize: 15.sp,
                                                            fontFamily: 'Noto Sans KR',
                                                            fontWeight: FontWeight.w700,
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        );
                                      }
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(11.w, 30.h, 11.w, 15.h),
                                    child: Divider(
                                      thickness: 0.5,
                                      height: 0.5.h,
                                      color: ColorConstant.black.withOpacity(0.2),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '총 상품 금액',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '${Constants.numberAddComma(controller.getSumPrice())}원',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  /*
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '총 할인 금액',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '3,123,456원',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),

                                   */
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '총 배송비',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '0원',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(11.w, 23.h, 11.w, 12.h),
                                    child: Divider(
                                      thickness: 0.5,
                                      height: 0.5.h,
                                      color: ColorConstant.black.withOpacity(0.2),
                                    ),
                                  ),
                                  /*
                                  Center(
                                    child: Text(
                                      '10,000원 더 담으면 배송비 무료!',
                                      style: TextStyle(
                                        color: ColorConstant.primary,
                                        fontSize: 11.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9,),

                                   */
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '부스트 배송 결제 금액',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '${Constants.numberAddComma(controller.getSumPrice())}원',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 11.h,),
                            /* 판매자 배송 삭제
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              padding: EdgeInsets.fromLTRB(11.w, 15.h, 11.w, 22.h),
                              decoration: BoxDecoration(
                                  border: Border.all(color: ColorConstant.gray20.withOpacity(0.5),width: 0.5)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 20.w,
                                        height: 20.h,
                                        child: Checkbox(
                                          side: BorderSide(
                                              width: 1.w,
                                              color: ColorConstant.gray7
                                          ),
                                          value: controller.boostAll.value,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          checkColor: ColorConstant.white,
                                          activeColor: ColorConstant.primary,
                                          onChanged: (bool? value){
                                            controller.boostAll.value = value!;
                                            controller.boostAllCheck();
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 4.w,),
                                      GestureDetector(
                                        onTap: (){
                                          controller.boostAll.value = !controller.boostAll.value;
                                          controller.boostAllCheck();
                                        },
                                        child: Text(
                                          '판매자 배송 (2/2)',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 14.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 2,
                                      itemBuilder: (context,index){
                                        return Container(
                                          height: 68.h,
                                          margin: EdgeInsets.only(top: 24.h),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 20.w,
                                                height: 20.h,
                                                margin: EdgeInsets.only(top: 4.h),
                                                child: Checkbox(
                                                  side: BorderSide(
                                                    width: 1.w,
                                                    color: ColorConstant.gray7,
                                                  ),
                                                  value: controller.boostAll.value,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(6),
                                                  ),
                                                  checkColor: ColorConstant.white,
                                                  activeColor: ColorConstant.primary,
                                                  onChanged: (bool? value){

                                                  },
                                                ),
                                              ),
                                              SizedBox(width: 6.w,),
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                                                child: Image.asset(
                                                  'assets/images/sample_product1.png',width: 68.w,height: 68.h,
                                                ),
                                              ),
                                              SizedBox(width: 10.w,),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            '상품명은 길어지면 쩜쩜쩜으로 만들면됩니다.546685456465456',
                                                            style: TextStyle(
                                                              color: ColorConstant.black,
                                                              fontSize: 14.sp,
                                                              fontFamily: 'Noto Sans KR',
                                                              fontWeight: FontWeight.w400,
                                                            ),
                                                            maxLines: 1,
                                                            overflow: TextOverflow.ellipsis,
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.only(top: 2.h),
                                                          child: GestureDetector(
                                                            onTap: (){

                                                            },
                                                            child: Icon(Icons.close_sharp,color: ColorConstant.black,size: 14),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(height: 2.h,),
                                                    Container(
                                                      width: 46.w,
                                                      height: 16.h,
                                                      alignment: Alignment.center,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: ColorConstant.accent, width: 1),
                                                          borderRadius: BorderRadius.all(Radius.circular(4))
                                                      ),
                                                      child: Text(
                                                        '부스트배송',
                                                        style: TextStyle(
                                                          color: ColorConstant.accent,
                                                          fontSize: 8.sp,
                                                          fontFamily: 'Noto Sans KR',
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: (){

                                                              },
                                                              child: Container(
                                                                width: 20.w,
                                                                height: 20.h,
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(width: 1,color: ColorConstant.gray2)
                                                                ),
                                                                child: Icon(Icons.remove,color: ColorConstant.gray19,size: 10,),
                                                              ),
                                                            ),
                                                            SizedBox(width: 20,),
                                                            Text(
                                                              '2',
                                                              style: TextStyle(
                                                                color: ColorConstant.black,
                                                                fontSize: 14.sp,
                                                                fontFamily: 'Noto Sans KR',
                                                                fontWeight: FontWeight.w500,
                                                              ),
                                                            ),
                                                            SizedBox(width: 20,),
                                                            GestureDetector(
                                                              onTap: (){

                                                              },
                                                              child: Container(
                                                                width: 20.w,
                                                                height: 20.h,
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(width: 1,color: ColorConstant.gray2)
                                                                ),
                                                                child: Icon(Icons.add,color: ColorConstant.gray19,size: 10,),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Text(
                                                          '총 3,000,000원',
                                                          style: TextStyle(
                                                            color: ColorConstant.black,
                                                            fontSize: 15.sp,
                                                            fontFamily: 'Noto Sans KR',
                                                            fontWeight: FontWeight.w700,
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        );
                                      }
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(11.w, 30.h, 11.w, 15.h),
                                    child: Divider(
                                      thickness: 0.5,
                                      height: 0.5.h,
                                      color: ColorConstant.black.withOpacity(0.2),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '총 상품 금액',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '3,123,456원',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '총 할인 금액',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '3,123,456원',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '총 배송비',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '3,123,456원',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(11.w, 23.h, 11.w, 12.h),
                                    child: Divider(
                                      thickness: 0.5,
                                      height: 0.5.h,
                                      color: ColorConstant.black.withOpacity(0.2),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      '10,000원 더 담으면 배송비 무료!',
                                      style: TextStyle(
                                        color: ColorConstant.primary,
                                        fontSize: 11.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '판매자 배송 결제 금액',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '3,123,456원',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                             */
                            Padding(
                              padding: EdgeInsets.only(top: 20.h,bottom: 17.h),
                              child: Divider(
                                thickness: 6,
                                height: 6.h,
                                color: ColorConstant.gray21.withOpacity(0.2),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '총 결제 금액',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 18.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    '${Constants.numberAddComma(controller.getSumPrice())}원',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 18.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 38.h,bottom: 120.h),
                              child: ElevatedButton(
                                onPressed: () async {

                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: ColorConstant.primary,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero
                                    ),
                                    minimumSize: Size(Get.width,55.h)
                                ),
                                child: Text(
                                  '일반배송 주문하기',
                                  style: TextStyle(
                                    color: ColorConstant.white,
                                    fontSize: 14.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                              ),
                            )
                          ]
                      )
                  ))
                ]
            ),
          )
        ],
      ),
    );
  }
}