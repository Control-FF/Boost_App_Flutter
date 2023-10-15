import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync(() => StorageService().init());

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    runApp(
      DevicePreview(
        enabled: kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => ScreenUtilInit(
        designSize: orientation == Orientation.portrait
            ? Size(375, 812)
            : Size(812, 375),
        builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: '부스트',
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: EasyLoading.init(builder: DevicePreview.appBuilder),
          initialRoute: AppRoutes.splashScreen,
          getPages: AppRoutes.pages,
        ),
      ),
    );
  }
}