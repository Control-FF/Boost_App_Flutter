import 'package:boostapp/data/models/address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressController extends GetxController {
  TextEditingController receiveNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  var addressList = RxList<Address>.empty(growable: true).obs;
  RxInt selectPosition = 99999999.obs;

  @override
  void onInit() {
    super.onInit();

    addressList.value.add(Address(idx: 1, receiveName: '테스터', phone: '010-1111-2222', address1: '부산광역시 금정구 온천장로 137', address2: '현대 성우오스타 1517호', isBasic: true, isSelect: false));
    addressList.value.add(Address(idx: 2, receiveName: '테스터', phone: '010-1111-2222', address1: '부산광역시 금정구 온천장로 137', address2: '현대 성우오스타 1517호', isBasic: false, isSelect: false));
    addressList.value.add(Address(idx: 3, receiveName: '테스터', phone: '010-1111-2222', address1: '부산광역시 금정구 온천장로 137', address2: '현대 성우오스타 1517호', isBasic: false, isSelect: false));
    addressList.value.add(Address(idx: 4, receiveName: '테스터', phone: '010-1111-2222', address1: '부산광역시 금정구 온천장로 137', address2: '현대 성우오스타 1517호', isBasic: false, isSelect: false));
    addressList.value.add(Address(idx: 5, receiveName: '테스터', phone: '010-1111-2222', address1: '부산광역시 금정구 온천장로 137', address2: '현대 성우오스타 1517호', isBasic: false, isSelect: false));
    addressList.value.add(Address(idx: 6, receiveName: '테스터', phone: '010-1111-2222', address1: '부산광역시 금정구 온천장로 137', address2: '현대 성우오스타 1517호', isBasic: false, isSelect: false));
    addressList.value.add(Address(idx: 7, receiveName: '테스터', phone: '010-1111-2222', address1: '부산광역시 금정구 온천장로 137', address2: '현대 성우오스타 1517호', isBasic: false, isSelect: false));
    addressList.value.add(Address(idx: 8, receiveName: '테스터', phone: '010-1111-2222', address1: '부산광역시 금정구 온천장로 137', address2: '현대 성우오스타 1517호', isBasic: false, isSelect: false));
    addressList.value.add(Address(idx: 9, receiveName: '테스터', phone: '010-1111-2222', address1: '부산광역시 금정구 온천장로 137', address2: '현대 성우오스타 1517호', isBasic: false, isSelect: false));
    addressList.value.add(Address(idx: 10, receiveName: '테스터', phone: '010-1111-2222', address1: '부산광역시 금정구 온천장로 137', address2: '현대 성우오스타 1517호', isBasic: false, isSelect: false));
  }


}