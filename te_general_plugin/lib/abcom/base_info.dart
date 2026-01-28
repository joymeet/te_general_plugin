import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:te_general_plugin/abcom/ZYRegister.dart';

class BaseInfo extends GetxController {
  static BaseInfo get to => Get.find();

  final _appName = "".obs;
  set appName(value) => _appName.value = value;
  get appName => _appName.value;

  final _appVersion = "".obs;
  set appVersion(value) => _appVersion.value = value;
  get appVersion => _appVersion.value;

  final _deviceVersion = "".obs;
  set deviceVersion(value) => _deviceVersion.value = value;
  get deviceVersion => _deviceVersion.value;

  final _systemVersion = "".obs;
  set systemVersion(value) => _systemVersion.value = value;
  get systemVersion => _systemVersion.value;

  final _deviceToken = "".obs;
  set deviceToken(value) => _deviceToken.value = value;
  get deviceToken => _deviceToken.value;

  final _channel = "".obs;
  set channel(value) => _channel.value = value;
  get channel => _channel.value;

  final _appAo = "".obs;
  set appAo(value) => _appAo.value = value;
  get appAo => _appAo.value;

  //权限
  final _notificationPermission = 0.obs;
  set notificationPermission(value) => _notificationPermission.value = value;
  get notificationPermission => _notificationPermission.value;

  final _locationPermission = 0.obs;
  set locationPermission(value) => _locationPermission.value = value;
  get locationPermission => _locationPermission.value;

  final _cameraPermission = 0.obs;
  set cameraPermission(value) => _cameraPermission.value = value;
  get cameraPermission => _cameraPermission.value;

  final _microphonePermission = 0.obs;
  set microphonePermission(value) => _microphonePermission.value = value;
  get microphonePermission => _microphonePermission.value;

  final _photoPermission = 0.obs;
  set photoPermission(value) => _photoPermission.value = value;
  get photoPermission => _photoPermission.value;

  final _trackingPermission = 0.obs;
  set trackingPermission(value) => _trackingPermission.value = value;
  get trackingPermission => _trackingPermission.value;

  final _idfaString = "".obs;
  set idfaString(value) => _idfaString.value = value;
  get idfaString => _idfaString.value;

  final _canTurn = true.obs;
  set canTurn(value) => _canTurn.value = value;
  get canTurn => _canTurn.value;

  final _appsflyerId = "".obs;
  set appsflyerId(value) => _appsflyerId.value = value;
  get appsflyerId => _appsflyerId.value;

  final _loadMap = "".obs;
  set loadMap(value) => _loadMap.value = value;
  get loadMap => _loadMap.value;

  final _spKey = "".obs;
  set spKey(value) => _spKey.value = value;
  get spKey => _spKey.value;

  final _nu = "".obs;
  set nu(value) => _nu.value = value;
  get nu => _nu.value;

  final _appList = <String>[].obs;
  set appList(value) => _appList.value = value;
  get appList => _appList.value;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAppInfo();
  }

  getAppInfo() async {
    // 获取应用包信息
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    _nu.value = AVInit.webpage_domain;
    _appName.value = AVInit.appName;
    _appVersion.value = packageInfo.version;
    _appList.value = ['snssdk1128://', "mqq://", "weixin://"];
    _appAo.value =
        "bundle_id=${packageInfo.packageName};version=${packageInfo.version};build=${packageInfo.buildNumber}";

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    _systemVersion.value = iosInfo.systemVersion;
    _deviceVersion.value = iosInfo.utsname.machine;
  }

  saveSpkey(String spKey) async {
    _spKey.value = spKey;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("qquuiquwuq", spKey);
    update();
  }

  Future<String> getSpkey() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String json = prefs.getString("qquuiquwuq") ?? "";
    return json;
  }

  saveLoadMapJson(String value) async {
    _loadMap.value = value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("zzmasndahv", value);
    update();
  }

  Future<String> getLoadMap() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String json = prefs.getString("zzmasndahv") ?? "";

    return json;
  }

  setAppsflyerId(String id) {
    _appsflyerId.value = id;
    update();
  }

  saveDeviceToken(String token) {
    _deviceToken.value = token;
    update();
  }

  saveChannel(String channel) {
    _channel.value = channel;
    update();
  }

  setCanTurn(bool value) {
    _canTurn.value = value;
    update();
  }

  setTrackingPermission(int value) {
    _trackingPermission.value = value;
    update();
  }

  setIdfaString(String value, bool isAuthorized) async {
    if (value == "") {
      await FlutterKeychain.remove(key: "idfa");
      _idfaString.value = "";
      update();
      return;
    }

    if (isAuthorized) {
      // 如果授权了，则保存到本地
      var idfa = await FlutterKeychain.get(key: "idfa");
      print('idfa: $value');
      if (idfa == null || idfa == "") {
        await FlutterKeychain.put(key: "idfa", value: value);
        _idfaString.value = value;
      } else {
        _idfaString.value = idfa;
      }
    } else {
      // 如果未授权，则生成以appName为开头的32位随机字符串
      var idfa = await FlutterKeychain.get(key: "idfa");
      if (idfa == null || idfa == "" || idfa.startsWith('000000')) {
        String appName = BaseInfo.to.appName;
        const chars =
            'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        final random = Random();

        int remainingLength = 32 - appName.length;
        if (remainingLength <= 0) {
          value = appName.substring(0, 32);
        } else {
          String randomPart =
              List.generate(
                remainingLength,
                (index) => chars[random.nextInt(chars.length)],
              ).join();
          value = appName + randomPart;
        }
        value = md5.convert(utf8.encode(value)).toString();
        await FlutterKeychain.put(key: "idfa", value: value);
        _idfaString.value = value;
      } else {
        _idfaString.value = idfa;
      }
    }

    update();
  }

  setNotificationPermission(int value) {
    _notificationPermission.value = value;
    update();
  }

  setLocationPermission(int value) {
    _locationPermission.value = value;
    update();
  }

  setCameraPermission(int value) {
    _cameraPermission.value = value;
    update();
  }

  setPhotoPermission(int value) {
    _photoPermission.value = value;
    update();
  }

  setMicrophonePermission(int value) {
    _microphonePermission.value = value;
    update();
  }
}
