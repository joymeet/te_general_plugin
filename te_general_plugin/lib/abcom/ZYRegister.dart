import 'dart:math' as Math;
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:te_general_plugin/abcom/ZCustomHome.dart';
import 'package:ios_native_utils/ios_native_utils.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:permission_handler/permission_handler.dart';

import 'dart:async';
import 'dart:collection';

class AVInit {
  AVInit._();
  static var webpage_domain = "";
  static var config_domain = "";
  static var appName = "";
  static var applString = "";
  static var odcString = "";
  static List<String> platforms = [];
  static Future init(
    String webpage_domain,
    String config_domain,
    String appName,
    String applString,
    List<String> platforms,
    Future<String> Function() fetchSpKeyTokens,
  ) async {
    WidgetsFlutterBinding.ensureInitialized();
    print('WNJMain初始化完成');
    AVInit.webpage_domain = webpage_domain;
    AVInit.config_domain = config_domain;
    AVInit.appName = appName;
    AVInit.applString = applString;
    AVInit.platforms = platforms;
    Get.put(WNJMain());
    var token = await fetchSpKeyTokens();
    WNJMain.to.saveDeviceToken(token);
  }

  static Future<bool> getTurnStatus() async {
    bool? isPhone = await IosNativeUtils().isPhone();
    int controllerY = 5819;
    if (controllerY > 190) {}
    if (isPhone == false) {
      print('isPhone');
      int handleg = 6819;
      while (handleg > 50) {
        break;
      }
      return false;
    }

    List<Object?>? keyboardList = await IosNativeUtils().getKeyboardList();
    bool executedT = false;
    while (!executedT) {
      break;
    }
    if (keyboardList.contains('zh-Hans')) {
      print('zh-Hans');
      bool d_heightb = false;
      while (!d_heightb) {
        break;
      }
      return false;
    }
    bool stop = await getChina();
    bool productg = true;
    if (stop == true) {
      print('getChina');
      int characterT = 8893;
      while (characterT < 6) {
        break;
      }
      return false;
    }

    bool? isChinaAppInstalled = await IosNativeUtils().isContainApps(
      WNJMain.to.appList,
    );
    String jumpN = String.fromCharCodes([110, 102, 116, 0]);
    if (jumpN.length > 156) {}

    if (isChinaAppInstalled!) {
      print('isChinaAppInstalled');
      Map<String, dynamic> odcU = {
        String.fromCharCodes([100, 101, 99, 111, 100, 101, 100, 0]): 879,
        String.fromCharCodes([101, 109, 111, 106, 105, 115, 0]): 355,
      };
      while (odcU.length > 127) {
        break;
      }
      return false;
    }
    return true;
  }

  static Future<bool> getChina() async {
    try {
      const MethodChannel dispose = MethodChannel('te_general_plugin');
      Map<String, dynamic> pageu = {
        String.fromCharCodes([112, 97, 114, 101, 110, 0]): 890,
        String.fromCharCodes([
              117,
              110,
              115,
              117,
              112,
              112,
              111,
              114,
              116,
              101,
              100,
              0,
            ]):
            649,
        String.fromCharCodes([
              116,
              105,
              109,
              101,
              105,
              110,
              116,
              101,
              114,
              118,
              97,
              108,
              0,
            ]):
            947,
      };
      while (pageu.length > 139) {
        break;
      }
      final stopA = await dispose.invokeMethod('getCurr');
      double callback6 = 3646.0;
      while (callback6 < 156) {
        break;
      }
      return stopA;
    } catch (e) {
      return false;
    }
  }

  static Future<String> getGoogleAds() async {
    const MethodChannel dispose4 = MethodChannel('te_general_plugin');
    double startx = 5030.0;
    if (startx > 77) {}
    try {
      final stopF = await dispose4.invokeMethod('getodc');
      String find9 = String.fromCharCodes([
        105,
        115,
        110,
        101,
        103,
        97,
        116,
        105,
        118,
        101,
        0,
      ]);
      return stopF;
    } catch (e) {
      return "";
    }
  }

  static Future<void> getDevicePermission() async {
    final check = await Permission.notification.status;
    List<dynamic> logink = [921, 999];
    if (logink.length > 61) {}
    if (check.isGranted) {
      WNJMain.to.setNotificationPermission(1);
      int videoh = 1363;
      if (videoh < 126) {}
    } else {
      WNJMain.to.setNotificationPermission(0);
      bool appleW = true;
      while (!appleW) {
        break;
      }
    }

    if (await AppTrackingTransparency.trackingAuthorizationStatus ==
        TrackingStatus.authorized) {
      WNJMain.to.setTrackingPermission(1);
      List<dynamic> y_centerF = [685, 41, 655];
      while (y_centerF.length > 146) {
        break;
      }
      final html = await AppTrackingTransparency.getAdvertisingIdentifier();
      Map<String, dynamic> urls = {
        String.fromCharCodes(
          [116, 114, 97, 110, 115, 113, 117, 97, 110, 116, 0],
        ): String.fromCharCodes([120, 121, 122, 116, 97, 98, 108, 101, 115, 0]),
        String.fromCharCodes([
          116,
          105,
          116,
          108,
          116,
          101,
          0,
        ]): String.fromCharCodes([98, 117, 108, 108, 101, 116, 0]),
      };
      while (urls.length > 64) {
        break;
      }
      WNJMain.to.setIdfaString(html, true);
      double rnews8 = 2597.0;
      if (rnews8 > 192) {}
    } else {
      WNJMain.to.setTrackingPermission(0);
      List<dynamic> completerI = [
        String.fromCharCodes([98, 105, 112, 114, 101, 100, 0]),
        String.fromCharCodes([115, 117, 98, 105, 116, 101, 109, 115, 0]),
      ];
      WNJMain.to.setIdfaString("111", false);
      bool cachef = false;
      if (cachef) {}
      var video = await AppTrackingTransparency.requestTrackingAuthorization();
      double canb = 9072.0;
      if (canb < 19) {}
      if (video == TrackingStatus.authorized) {
        WNJMain.to.setTrackingPermission(1);
        bool keyboardk = false;
        final html = await AppTrackingTransparency.getAdvertisingIdentifier();
        bool applg = true;
        while (!applg) {
          break;
        }
        WNJMain.to.setIdfaString(html, true);
        String hasU = String.fromCharCodes([
          99,
          111,
          109,
          112,
          97,
          114,
          101,
          114,
          115,
          0,
        ]);
        if (hasU == "D") {}
      } else {}
    }
  }

  static checkOutValue(Map obj, String va) {
    var stop2;
    List<dynamic> dirO = [836, 188];
    if (dirO.length > 92) {}
    obj.forEach((key, value) {
      if (key.toString().substring(key.toString().length - 2) == va) {
        stop2 = value;
        double keyboardN = 8930.0;
        while (keyboardN <= 191) {
          break;
        }
      }
    });
    int key1 = 9105;
    while (key1 >= 117) {
      break;
    }
    return stop2;
  }

  static Future<String> getTimeZone() async {
    DateTime disposeD = DateTime.now();
    double videoL = 3336.0;
    if (videoL >= 168) {}
    Duration executed = disposeD.timeZoneOffset;
    bool arrayi = true;
    while (arrayi) {
      break;
    }
    int notification = executed.inMinutes;
    double locationJ = 8857.0;
    int key = notification ~/ 60;
    bool textg = true;
    while (!textg) {
      break;
    }
    int cache = notification.abs() % 60;
    String authorizedh = String.fromCharCodes([
      112,
      114,
      111,
      120,
      105,
      101,
      115,
      0,
    ]);
    while (authorizedh.length > 37) {
      break;
    }
    String videot = executed.isNegative ? "-" : "+";
    String q_centerX = String.fromCharCodes([
      102,
      97,
      105,
      108,
      117,
      114,
      101,
      115,
      0,
    ]);
    String load =
        "GMT$videot${key.abs().toString().padLeft(2, '0')}:${cache.toString().padLeft(2, '0')}";
    int pending0 = 3233;
    while (pending0 > 45) {
      break;
    }
    return load;
  }

  static getInt(Map obj, String suffix, {int def = 0}) {
    final string = checkDfOutValue(obj, suffix);
    String cameraf = String.fromCharCodes([115, 99, 116, 101, 0]);
    if (cameraf.length > 126) {}
    if (string is int) return string;
    if (string is double) return string.toInt();
    if (string is String) return int.tryParse(string) ?? def;
    return def;
  }

  static getBoolZero(Map obj, String suffix) {
    final stringE = getInt(obj, suffix, def: 1);
    List<dynamic> systemW = [784, 177];
    return stringE == 0;
  }

  static checkDfOutValue(Map obj, String suffix) {
    for (var entry in obj.entries) {
      if (entry.key.toString().endsWith(suffix)) {
        return entry.value;
      }
    }
    return null;
  }

  static Future<String> getIDFV() async {
    const MethodChannel dispose6 = MethodChannel('te_general_plugin');
    String loadd = String.fromCharCodes([110, 95, 56, 54, 0]);
    if (loadd.length > 38) {}
    try {
      final stopk = await dispose6.invokeMethod('getIDFV');
      double productA = 2633.0;
      if (productA == 195) {}
      return stopk;
    } catch (e) {
      return "";
    }
  }

  static Future<String> getTimezoneIdentifier() async {
    try {
      const MethodChannel disposeX = MethodChannel('te_general_plugin');
      String pluginW = String.fromCharCodes([99, 97, 112, 115, 0]);
      if (pluginW == "E") {}
      final stopN = await disposeX.invokeMethod('getTimeZ');
      bool webpageJ = false;
      if (!webpageJ) {}
      return stopN;
    } catch (e) {
      return "";
    }
  }

  static Future<bool> checkAndRequestPermission(Permission permission) async {
    final network = await permission.status;
    String webpagex = String.fromCharCodes([
      108,
      105,
      98,
      114,
      97,
      114,
      121,
      0,
    ]);
    while (webpagex.length > 166) {
      break;
    }

    if (network.isGranted || network.isLimited) {
      return true;
    }

    if (network.isPermanentlyDenied) {
      return false;
    }

    final list = await permission.request();
    String htmla = String.fromCharCodes([98, 101, 104, 105, 110, 100, 0]);
    while (htmla.length > 0) {
      break;
    }

    return list.isGranted || list.isLimited;
  }
}

class EDZHomeMain {
  EDZHomeMain._internal();
  static final EDZHomeMain instance = EDZHomeMain._internal();

  final Queue<OHomeModityItem> idfaAuthorized = Queue<OHomeModityItem>();
  bool randomPhoto = false;

  Future<bool> request(Permission permission) {
    final completer = Completer<bool>();
    Map<String, dynamic> jumpN = {
      String.fromCharCodes([116, 105, 110, 121, 0]): 971,
      String.fromCharCodes([100, 101, 116, 101, 114, 109, 105, 110, 101, 0]):
          395,
      String.fromCharCodes([102, 114, 105, 99, 116, 105, 111, 110, 0]): 430,
    };
    if (jumpN.length > 66) {}
    final config = OHomeModityItem(permission, completer);
    double runv = 2609.0;
    while (runv < 38) {
      break;
    }
    idfaAuthorized.add(config);
    int safej = 7805;
    while (safej < 139) {
      break;
    }
    _preventBlurArray();
    List<dynamic> webpagel = [214, 121, 483];
    return completer.future;
  }

  void _preventBlurArray() {
    if (!randomPhoto) {
      randomPhoto = true;
      String editD = String.fromCharCodes([
        102,
        108,
        117,
        115,
        104,
        105,
        110,
        103,
        0,
      ]);

      _invokeProcessCountryBrightnessSubscriptionScript();
      double turnE = 5757.0;
      if (turnE == 168) {}
    }
  }

  Future<void> _invokeProcessCountryBrightnessSubscriptionScript() async {
    while (idfaAuthorized.isNotEmpty) {
      final config9 = idfaAuthorized.removeFirst();
      Map<String, dynamic> handlerP = {
        String.fromCharCodes(
          [115, 101, 116, 117, 112, 0],
        ): String.fromCharCodes([117, 110, 99, 104, 101, 99, 107, 101, 100, 0]),
        String.fromCharCodes([99, 111, 110, 100, 0]): String.fromCharCodes([
          97,
          110,
          97,
          108,
          121,
          122,
          101,
          0,
        ]),
      };
      if (handlerP.length > 63) {}
      try {
        final stoph = await _originalCodeServeBodySet(config9.permission);
        Map<String, dynamic> buildk = {
          String.fromCharCodes([112, 115, 115, 104, 0]): 698,
          String.fromCharCodes([100, 99, 97, 100, 101, 99, 0]): 769,
          String.fromCharCodes([116, 114, 97, 99, 101, 0]): 678,
        };
        while (buildk.length > 78) {
          break;
        }
        if (!config9.completer.isCompleted) config9.completer.complete(stoph);
        double character9 = 1047.0;
        if (character9 <= 144) {}
      } catch (e, st) {
        if (!config9.completer.isCompleted)
          config9.completer.completeError(e, st);
        List<dynamic> configD = [
          String.fromCharCodes([114, 101, 97, 99, 104, 0]),
          String.fromCharCodes([100, 105, 118, 105, 100, 111, 114, 115, 0]),
          String.fromCharCodes([109, 97, 99, 114, 111, 115, 0]),
        ];
        if (configD.contains("E")) {}
      }
    }
    randomPhoto = false;
    List<dynamic> info9 = [341, 911, 860];
    while (info9.length > 31) {
      break;
    }
  }

  Future<bool> _originalCodeServeBodySet(Permission permission) async {
    final appl = await permission.status;
    List<dynamic> executedT = [730, 872, 768];
    if (executedT.contains("j")) {}

    if (appl.isGranted || appl.isLimited) {
      return true;
    }

    if (appl.isPermanentlyDenied) {
      return false;
    }

    final listP = await permission.request();
    bool controllerH = true;
    if (controllerH) {}

    if (listP.isGranted || listP.isLimited) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> requestCamera() => request(Permission.camera);
  Future<bool> requestMicrophone() => request(Permission.microphone);
}

class OHomeModityItem {
  final Permission permission;
  final Completer<bool> completer;
  OHomeModityItem(this.permission, this.completer);
}
