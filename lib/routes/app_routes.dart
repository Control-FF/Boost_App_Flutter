import 'package:boostapp/modules/address/address_edit_binding.dart';
import 'package:boostapp/modules/address/address_edit_screen.dart';
import 'package:boostapp/modules/address/address_list_binding.dart';
import 'package:boostapp/modules/address/address_list_screen.dart';
import 'package:boostapp/modules/cart/cart_binding.dart';
import 'package:boostapp/modules/cart/cart_screen.dart';
import 'package:boostapp/modules/find/find_binding.dart';
import 'package:boostapp/modules/find/find_screen.dart';
import 'package:boostapp/modules/login/login_binding.dart';
import 'package:boostapp/modules/login/login_screen.dart';
import 'package:boostapp/modules/main/main.screen.dart';
import 'package:boostapp/modules/main/main_binding.dart';
import 'package:boostapp/modules/main/pages/buy/buy_binding.dart';
import 'package:boostapp/modules/main/pages/buy/buy_list_screen.dart';
import 'package:boostapp/modules/main/pages/coupon/coupon_binding.dart';
import 'package:boostapp/modules/main/pages/coupon/coupon_list_screen.dart';
import 'package:boostapp/modules/main/pages/coupon/coupon_register_screen.dart';
import 'package:boostapp/modules/main/pages/order/order_binding.dart';
import 'package:boostapp/modules/main/pages/order/order_list_screen.dart';
import 'package:boostapp/modules/main/pages/my_info/my_info_binding.dart';
import 'package:boostapp/modules/main/pages/my_info/my_info_check_screen.dart';
import 'package:boostapp/modules/main/pages/my_info/my_info_update_screen.dart';
import 'package:boostapp/modules/main/pages/pay/pay_binding.dart';
import 'package:boostapp/modules/main/pages/pay/pay_register_screen.dart';
import 'package:boostapp/modules/main/pages/pay/pay_screen.dart';
import 'package:boostapp/modules/main/pages/point/point_binding.dart';
import 'package:boostapp/modules/main/pages/point/point_screen.dart';
import 'package:boostapp/modules/product_detail/product_detail_binding.dart';
import 'package:boostapp/modules/product_detail/product_detail_screen.dart';
import 'package:boostapp/modules/register/register_binding.dart';
import 'package:boostapp/modules/register/register_screen.dart';
import 'package:boostapp/modules/reset/reset_binding.dart';
import 'package:boostapp/modules/reset/reset_screen.dart';
import 'package:boostapp/modules/search/search_binding.dart';
import 'package:boostapp/modules/search/search_screen.dart';
import 'package:boostapp/modules/splash/splash_binding.dart';
import 'package:boostapp/modules/splash/splash_screen.dart';
import 'package:boostapp/modules/tutorial/tutorial_binding.dart';
import 'package:boostapp/modules/tutorial/tutorial_intro_screen.dart';
import 'package:boostapp/modules/tutorial/tutorial_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const mainScreen = '/';


  static const splashScreen = '/splash';
  static const tutorialScreen = '/tutorial';
  static const tutorialIntroScreen = '/intro';
  static const loginScreen = '/login';
  static const findScreen = '/findPwd';
  static const resetScreen = '/resetPwd';
  static const registerScreen = '/register';

  static const addressScreen = '/address';
  static const addressEditScreen = '/address_edit';

  static const searchScreen = '/search';
  static const productDetailScreen = '/product_detail';
  static const cartScreen = '/cart';
  static const myInfoCheck = '/my_info_check';
  static const myInfoUpdate = '/my_info_update';
  static const orderList = '/order_list';
  static const buyList = '/buy_list';
  static const couponList = '/coupon_list';
  static const couponRegister = '/coupon_register';
  static const pointList = '/point_list';
  static const payList = '/pay_list';
  static const payRegister = '/pay_register';

  static List<GetPage> pages = [
    GetPage(
      name: mainScreen,
      page: () => MainScreen(),
      bindings: [
        MainBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: tutorialScreen,
      page: () => TutorialScreen(),
      bindings: [
        TutorialBinding(),
      ],
    ),
    GetPage(
      name: tutorialIntroScreen,
      page: () => TutorialIntroScreen(),
      bindings: [
        TutorialBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: findScreen,
      page: () => FindScreen(),
      bindings: [
        FindBinding(),
      ],
    ),
    GetPage(
      name: resetScreen,
      page: () => ResetScreen(),
      bindings: [
        ResetBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: addressScreen,
      page: () => AddressScreen(),
      bindings: [
        AddressBinding(),
      ],
    ),
    GetPage(
      name: addressEditScreen,
      page: () => AddressEditScreen(),
      bindings: [
        AddressEditBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: productDetailScreen,
      page: () => ProductDetailScreen(),
      bindings: [
        ProductDetailBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: myInfoCheck,
      page: () => MyInfoCheckScreen(),
      bindings: [
        MyInfoBinding(),
      ],
    ),
    GetPage(
      name: myInfoUpdate,
      page: () => MyInfoUpdateScreen(),
      bindings: [
        MyInfoBinding(),
      ],
    ),
    GetPage(
      name: orderList,
      page: () => OrderListScreen(),
      bindings: [
        OrderBinding(),
      ],
    ),
    GetPage(
      name: buyList,
      page: () => BuyListScreen(),
      bindings: [
        BuyBinding(),
      ],
    ),
    GetPage(
      name: couponList,
      page: () => CouponListScreen(),
      bindings: [
        CouponBinding(),
      ],
    ),
    GetPage(
      name: couponRegister,
      page: () => CouponRegisterScreen(),
      bindings: [
        CouponBinding(),
      ],
    ),
    GetPage(
      name: pointList,
      page: () => PointScreen(),
      bindings: [
        PointBinding(),
      ],
    ),
    GetPage(
      name: payList,
      page: () => PayScreen(),
      bindings: [
        PayBinding(),
      ],
    ),
    GetPage(
      name: payRegister,
      page: () => PayRegisterScreen(),
      bindings: [
        PayBinding(),
      ],
    ),
  ];
}