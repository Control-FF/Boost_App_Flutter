import 'package:boostapp/data/service/user_service.dart';
import 'package:get/get.dart';

class PointController extends GetxController with StateMixin{
  final UserService _userService = Get.find();

  @override
  void onInit() {
    super.onInit();

    getPointList();
  }

  Future<void> getPointList() async {
    final result = await _userService.getPointList();
    result.fold(
      (failure) {
        change(null, status: RxStatus.error(failure.message));
      },
      (response) {
        change(response, status: RxStatus.success());
      },
    );
  }
}