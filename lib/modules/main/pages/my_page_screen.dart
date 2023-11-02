import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/my_page_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyPageScreen extends GetView<MyPageController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: ColorConstant.white,
      appBar: AppBar(
        backgroundColor: ColorConstant.white,
        elevation: 0,
        title: Text(
          '마이페이지',
          style: TextStyle(
            color: ColorConstant.black2,
            fontSize: 16.sp,
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: SizedBox.fromSize(
              size: Size(17, 17), // button width and height
              child: InkWell(
                splashColor: Colors.white, // splash color
                onTap: () {
                  Get.toNamed(AppRoutes.cartScreen);
                }, // button pressed
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/ic_cart.png',width: 17.w,height: 17.h,), // icon
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Divider(
                    height: 1.h,
                    thickness: 1,
                    color: ColorConstant.black,
                  ),
                  SizedBox(height: 8.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '회원이름',
                            style: TextStyle(
                              color: ColorConstant.black,
                              fontSize: 16.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4.h,),
                          Row(
                            children: [
                              Text(
                                '신선신선야채맨',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 4.w,),
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed(AppRoutes.myInfoCheck);
                                },
                                child: Image.asset('assets/images/ic_edit.png',width: 16,height: 16,),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(17.w, 4.h, 4.w, 4.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: ColorConstant.gray2,width: 1)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '일반멤버',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 4.h,),
                            Image.asset('assets/images/ic_grade_normal.png',width: 24.w,height: 24.h,),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          '추천인 코드',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 14.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: (){
                            Clipboard.setData(ClipboardData(text: '1q2w3e'));

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              elevation: 6.0,
                              behavior: SnackBarBehavior.floating,
                              content: Text(
                                '추천인 코드가 클립보드에 복사되었습니다.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ));
                          },
                          child: Container(
                            height: 28.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: ColorConstant.gray2, width: 1)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '1q2w3e',
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 10.w,),
                                Image.asset('assets/images/ic_copy.png',width: 20.w,height: 20.h,)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 53.w,
                        height: 70.h,
                        padding: EdgeInsets.only(top: 9.5.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                            color: ColorConstant.blue2.withOpacity(0.29)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Wrap(
                                  children: [
                                    Text(
                                      '입금, 결제 완료',
                                      style: TextStyle(
                                        color: ColorConstant.black,
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 53.w,
                        height: 70.h,
                        padding: EdgeInsets.only(top: 9.5.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                            color: ColorConstant.accent
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                color: ColorConstant.white,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Wrap(
                                  children: [
                                    Text(
                                      '배송\n준비중',
                                      style: TextStyle(
                                        color: ColorConstant.white,
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 53.w,
                        height: 70.h,
                        padding: EdgeInsets.only(top: 9.5.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                            color: ColorConstant.blue2.withOpacity(0.29)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Wrap(
                                  children: [
                                    Text(
                                      '배송중',
                                      style: TextStyle(
                                        color: ColorConstant.black,
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 53.w,
                        height: 70.h,
                        padding: EdgeInsets.only(top: 9.5.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                            color: ColorConstant.blue2.withOpacity(0.29)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Wrap(
                                  children: [
                                    Text(
                                      '배송\n완료',
                                      style: TextStyle(
                                        color: ColorConstant.black,
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 53.w,
                        height: 70.h,
                        padding: EdgeInsets.only(top: 9.5.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                            color: ColorConstant.blue2.withOpacity(0.29)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Wrap(
                                  children: [
                                    Text(
                                      '취소, 교환, 환불',
                                      style: TextStyle(
                                        color: ColorConstant.black,
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h,),
                  Divider(
                    thickness: 1,
                    height: 1.h,
                    color: ColorConstant.gray22,
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/ic_point.png',width: 24.w,height: 24.h,),
                              SizedBox(height: 4.h,),
                              Text(
                                '포인트',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '100,000점',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/ic_coupon.png',width: 24.w,height: 24.h,),
                              SizedBox(height: 4.h,),
                              Text(
                                '쿠폰',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '1,000장',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/ic_point.png',width: 24.w,height: 24.h,),
                              SizedBox(height: 4.h,),
                              Text(
                                '리뷰',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '100건',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h,),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              height: 1.h,
              color: ColorConstant.gray22,
            ),
            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.buyList);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                alignment: Alignment.center,
                height: 72.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '구매내역',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.navigate_next_sharp,color: ColorConstant.black.withOpacity(0.25),size: 24,)
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 1.h,
              color: ColorConstant.gray22,
            ),
            InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                alignment: Alignment.center,
                height: 72.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '결제수단 관리',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.navigate_next_sharp,color: ColorConstant.black.withOpacity(0.25),size: 24,)
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 1.h,
              color: ColorConstant.gray22,
            ),
            InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                alignment: Alignment.center,
                height: 72.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '찜한 상품',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.navigate_next_sharp,color: ColorConstant.black.withOpacity(0.25),size: 24,)
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 1.h,
              color: ColorConstant.gray22,
            ),
            InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                alignment: Alignment.center,
                height: 72.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '정기배송 관리',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.navigate_next_sharp,color: ColorConstant.black.withOpacity(0.25),size: 24,)
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 1.h,
              color: ColorConstant.gray22,
            ),
            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.addressScreen);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                alignment: Alignment.center,
                height: 72.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '배송지 관리',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.navigate_next_sharp,color: ColorConstant.black.withOpacity(0.25),size: 24,)
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 1.h,
              color: ColorConstant.gray22,
            ),
            InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                alignment: Alignment.center,
                height: 72.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '고객 센터',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.navigate_next_sharp,color: ColorConstant.black.withOpacity(0.25),size: 24,)
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 1.h,
              color: ColorConstant.gray22,
            ),
            InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                alignment: Alignment.center,
                height: 72.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '공지사항',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.navigate_next_sharp,color: ColorConstant.black.withOpacity(0.25),size: 24,)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                controller.logout();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                alignment: Alignment.center,
                height: 72.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '로그아웃',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.navigate_next_sharp,color: ColorConstant.black.withOpacity(0.25),size: 24,)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                alignment: Alignment.center,
                height: 72.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '회원탈퇴',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.navigate_next_sharp,color: ColorConstant.black.withOpacity(0.25),size: 24,)
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 1.h,
              color: ColorConstant.gray22,
            ),
            InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                alignment: Alignment.center,
                height: 72.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/ic_version_info.png',width: 24.38.w,height: 24.h,),
                        SizedBox(width: 15.24.w,),
                        Text(
                          '버전 정보',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 16.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'V 1.0.0',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100.h,),
          ],
        ),
      ),
    );
  }

}