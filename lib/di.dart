
import 'package:boostapp/data/service/api_service.dart';
import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
    await Get.putAsync(() => ApiService().init());
    await Get.putAsync(() => UserService().init());
  }
}
