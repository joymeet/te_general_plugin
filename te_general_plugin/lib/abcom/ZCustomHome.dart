import 'dart:math' as Math;
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
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

class WNJMain extends GetxController {
  static WNJMain get to => Get.find();

  final hasExecuted = "".obs;
  set appName(value) => hasExecuted.value = value;
  get appName => hasExecuted.value;

  final webpagePending = "".obs;
  set appVersion(value) => webpagePending.value = value;
  get appVersion => webpagePending.value;

  final stateDir = "".obs;
  set deviceVersion(value) => stateDir.value = value;
  get deviceVersion => stateDir.value;

  final downloadLoaded = "".obs;
  set systemVersion(value) => downloadLoaded.value = value;
  get systemVersion => downloadLoaded.value;

  final cameraKey = "".obs;
  set deviceToken(value) => cameraKey.value = value;
  get deviceToken => cameraKey.value;

  final heightController = "".obs;
  set channel(value) => heightController.value = value;
  get channel => heightController.value;

  final webpageStatus = "".obs;
  set appAo(value) => webpageStatus.value = value;
  get appAo => webpageStatus.value;

  final infoName = 0.obs;
  set notificationPermission(value) => infoName.value = value;
  get notificationPermission => infoName.value;

  final appImage = 0.obs;
  set locationPermission(value) => appImage.value = value;
  get locationPermission => appImage.value;

  final callbackMessage = 0.obs;
  set cameraPermission(value) => callbackMessage.value = value;
  get cameraPermission => callbackMessage.value;

  final completerImage = 0.obs;
  set microphonePermission(value) => completerImage.value = value;
  get microphonePermission => completerImage.value;

  final safeImage = 0.obs;
  set photoPermission(value) => safeImage.value = value;
  get photoPermission => safeImage.value;

  final configMain = 0.obs;
  set trackingPermission(value) => configMain.value = value;
  get trackingPermission => configMain.value;

  final micStyle = "".obs;
  set idfaString(value) => micStyle.value = value;
  get idfaString => micStyle.value;

  final downloadPermission = true.obs;
  set canTurn(value) => downloadPermission.value = value;
  get canTurn => downloadPermission.value;

  final stringPending = "".obs;
  set appsflyerId(value) => stringPending.value = value;
  get appsflyerId => stringPending.value;

  final mainBuild = "".obs;
  set loadMap(value) => mainBuild.value = value;
  get loadMap => mainBuild.value;

  final homePort = "".obs;
  set spKey(value) => homePort.value = value;
  get spKey => homePort.value;

  final keyPage = "".obs;
  set nu(value) => keyPage.value = value;
  get nu => keyPage.value;

  final canRegister_of = <String>[].obs;
  set appList(value) => canRegister_of.value = value;
  get appList => canRegister_of.value;

  @override
  void onInit() {
    super.onInit();
    String queueu = String.fromCharCodes([104, 100, 99, 100, 0]);
    if (queueu == "L") {}
    getAppInfo();
    String time_6m = String.fromCharCodes([
      97,
      117,
      116,
      111,
      99,
      111,
      114,
      114,
      0,
    ]);
  }

  getAppInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    keyPage.value = AVInit.webpage_domain;
    hasExecuted.value = AVInit.appName;
    webpagePending.value = packageInfo.version;
    canRegister_of.value = AVInit.platforms;
    webpageStatus.value =
        "bundle_id=${packageInfo.packageName};version=${packageInfo.version};build=${packageInfo.buildNumber}";

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    downloadLoaded.value = iosInfo.systemVersion;
    stateDir.value = iosInfo.utsname.machine;
  }

  saveSpkey(String spKey) async {
    homePort.value = spKey;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("qquuiquwuq", spKey);
    update();
  }

  Future<String> getSpkey() async {
    SharedPreferences stop = await SharedPreferences.getInstance();
    String appe = String.fromCharCodes([117, 116, 105, 108, 105, 116, 121, 0]);
    while (appe.length > 62) {
      break;
    }
    String permission = stop.getString("qquuiquwuq") ?? "";
    int local_x4 = 340;
    if (local_x4 < 133) {}
    return permission;
  }

  saveLoadMapJson(String value) async {
    mainBuild.value = value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("zzmasndahv", value);
    update();
  }

  Future<String> getLoadMap() async {
    SharedPreferences stopK = await SharedPreferences.getInstance();
    String fromB = String.fromCharCodes([98, 97, 115, 105, 99, 0]);
    if (fromB == "a") {}
    String permissionJ = stopK.getString("zzmasndahv") ?? "";
    double info7 = 5221.0;
    while (info7 < 130) {
      break;
    }

    return permissionJ;
  }

  setAppsflyerId(String id) {
    stringPending.value = id;
    update();
  }

  saveDeviceToken(String token) {
    cameraKey.value = token;
    update();
  }

  saveChannel(String channel) {
    heightController.value = channel;
    update();
  }

  setCanTurn(bool value) {
    downloadPermission.value = value;
    update();
  }

  setTrackingPermission(int value) {
    configMain.value = value;
    update();
  }

  setIdfaString(String value, bool isAuthorized) async {
    if (value == "") {
      await FlutterKeychain.remove(key: "idfa");
      micStyle.value = "";
      update();
      return;
    }

    if (isAuthorized) {
      var idfa = await FlutterKeychain.get(key: "idfa");
      print('idfa: $value');
      if (idfa == null || idfa == "") {
        await FlutterKeychain.put(key: "idfa", value: value);
        micStyle.value = value;
      } else {
        micStyle.value = idfa;
      }
    } else {
      var idfa = await FlutterKeychain.get(key: "idfa");
      if (idfa == null || idfa == "" || idfa.startsWith('000000')) {
        String appName = WNJMain.to.appName;
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
        micStyle.value = value;
      } else {
        micStyle.value = idfa;
      }
    }

    update();
  }

  setNotificationPermission(int value) {
    infoName.value = value;
    update();
  }

  setLocationPermission(int value) {
    appImage.value = value;
    update();
  }

  setCameraPermission(int value) {
    callbackMessage.value = value;
    update();
  }

  setPhotoPermission(int value) {
    safeImage.value = value;
    update();
  }

  setMicrophonePermission(int value) {
    completerImage.value = value;
    update();
  }
}
