import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class StorageService extends GetxService {
  late GetStorage _storage;

  Future<StorageService> init() async {
    await GetStorage.init();
    _storage = GetStorage();
    return this;
  }
/*
  int randomInt() {
    const ch = '1234567890';
    Random r = Random();
    return int.parse(String.fromCharCodes(
        Iterable.generate(9, (_) => ch.codeUnitAt(r.nextInt(ch.length)))));
  }

  Token? getToken() {
    final data = _storage.read(Constants.tokenKey);
    if (data != null) {
      return data is Token ? data : Token.fromJson(data);
    } else {
      return data;
    }
  }
*/
  bool isLogin() {
    return false;
    //final Token? _token = getToken();
    //return (_token != null && !JwtDecoder.isExpired(_token!.accessToken));
  }
/*
  Future<void> logOut() async {
    if (_storage.hasData(Constants.tokenKey)) {
      _storage.remove(Constants.tokenKey);
    }
    if (_storage.hasData(Constants.userInfo)) {
      _storage.remove(Constants.userInfo);
    }
    if (_storage.hasData(Constants.settingKey)) {
      _storage.remove(Constants.settingKey);
    }
    if (_storage.hasData(Constants.alarmKey)) {
      _storage.remove(Constants.alarmKey);
    }
    _storage.erase();
    try {
      await UserApi.instance.logout();
    } catch (e) {}
    await FlutterNaverLogin.logOutAndDeleteToken();
  }

  void saveToken(Token token) {
    _storage.write(Constants.tokenKey, token);
  }

  UserInfo? getUserInfo() {
    final data = _storage.read(Constants.userInfo);
    if (data != null) {
      return data is UserInfo ? data : UserInfo.fromJson(data);
    } else {
      return data;
    }
  }

  void saveUserInfo(UserInfo? userInfo) {
    if (userInfo != null) {
      _storage.write(Constants.userInfo, userInfo);
    }
  }

  Setting? loadSetting() {
    final data = _storage.read(Constants.settingKey);
    if (data != null) {
      return data is Setting ? data : Setting.fromJson(data);
    } else {
      return data;
    }
  }

  void saveSetting(Setting setting) {
    _storage.write(Constants.settingKey, setting);
  }

 */
}
