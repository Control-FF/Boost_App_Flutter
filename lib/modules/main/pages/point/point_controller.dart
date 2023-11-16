import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PointController extends GetxController with StateMixin{
  final UserService _userService = Get.find();

  TextEditingController pointController = TextEditingController();

  RxInt point = 0.obs;
  RxInt usePoint = 0.obs;

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
        point.value = response.point;
        change(response, status: RxStatus.success());
      },
    );
  }
}