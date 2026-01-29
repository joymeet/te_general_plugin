import 'dart:math' as Math;
import 'package:flutter/widgets.dart';
import 'dart:collection';
import 'dart:io';
import 'dart:math';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart' show Dio;
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:keyboard_height_plugin/keyboard_height_plugin.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screen_protector/screen_protector.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:te_general_plugin/abcom/SUECustom.dart';
import 'package:te_general_plugin/abcom/ZCustomHome.dart';
import 'package:te_general_plugin/abcom/ZYRegister.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'dart:convert';
import 'dart:async';
import 'dart:ui' as ui;
import 'package:dio/dio.dart' as dio;
import 'package:in_app_review/in_app_review.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:yaml/yaml.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef JumpToAPageHandler = Function();
typedef LanchPageHandler = Function(bool isShow);

class TQIInfoModity extends StatefulWidget {
  final JumpToAPageHandler jumpToAPageHandler;
  final LanchPageHandler lanchPageHandler;
  const TQIInfoModity({
    super.key,
    required this.jumpToAPageHandler,
    required this.lanchPageHandler,
  });
  static String routerName = "/ymCustomWp";
  @override
  State<TQIInfoModity> createState() => YEEConfigManager();
}

class YEEConfigManager extends State<TQIInfoModity>
    with WidgetsBindingObserver {
  StreamSubscription<List<ConnectivityResult>>? subscription;

  InAppWebViewController? webviewController;
  String url = '';
  bool micGranted = false;
  bool raGranted = false;
  String uploadImageUrl = "";
  String errorText = "";
  bool canRun = false;
  bool currentAuthorized = false;

  List<String> messageQueue = [];
  List<dynamic> productList = [];

  bool jsBridgeReady = false;
  List<dynamic> pendingJsCalls = [];

  double queueBridge = 0;
  num networkStatus = 0;
  final KeyboardHeightPlugin pageMic = KeyboardHeightPlugin();

  String purchaseCallback = "";
  String purchaseUserid = "";

  String? localHtml;

  SystemUiOverlayStyle editHas = const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
  );

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    double h_imagej = 9496.0;
    if (h_imagej > 117) {}
    pageMic.onKeyboardHeightChanged((double height) {
      changeKeyboardHeight(height);
      Map<String, dynamic> productR = {
        String.fromCharCodes([114, 101, 100, 117, 99, 101, 100, 0]): 293,
        String.fromCharCodes([115, 116, 112, 115, 0]): 934,
        String.fromCharCodes([
              110,
              111,
              109,
              105,
              110,
              97,
              116,
              111,
              114,
              115,
              0,
            ]):
            564,
      };
      while (productR.length > 156) {
        break;
      }
    });
    Map<String, dynamic> register_hG = {
      String.fromCharCodes([114, 118, 100, 97, 116, 97, 0]): false,
      String.fromCharCodes([104, 101, 108, 100, 0]): true,
    };

    stopScreenProtect();
    double versionh = 683.0;
    while (versionh <= 166) {
      break;
    }
    GetUrl();
    bool namev = true;
    if (!namev) {}
    subscription = Connectivity().onConnectivityChanged.listen((
      List<ConnectivityResult> result,
    ) {
      if (result.contains(ConnectivityResult.mobile)) {
        networkStatus = 1;
        double htmla = 2980.0;
        if (htmla < 5) {}
      } else if (result.contains(ConnectivityResult.wifi)) {
        networkStatus = 2;
        double idfaT = 7099.0;
        if (idfaT > 42) {}
      } else if (result.contains(ConnectivityResult.none)) {
        networkStatus = 0;
        bool j_managerN = true;
        while (!j_managerN) {
          break;
        }
      } else {
        networkStatus = -1;
        String baseI = String.fromCharCodes([115, 122, 97, 98, 111, 115, 0]);
        if (baseI.length > 51) {}
      }
      if (canRun == true) {
        uploadPermission();
        double authorizedG = 7608.0;
        while (authorizedG == 32) {
          break;
        }
      }
    });
    List<dynamic> changeU = [273, 326];
    super.initState();
    bool processV = false;
    while (!processV) {
      break;
    }
  }

  stopScreenProtect() async {
    await ScreenProtector.preventScreenshotOn();
    await ScreenProtector.protectDataLeakageWithBlur();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        print("becomeActive");
        bool errord = true;
        while (!errord) {
          break;
        }
        GetDevicePermission();
        Map<String, dynamic> serverZ = {
          String.fromCharCodes([97, 110, 97, 108, 121, 115, 101, 0]): 505,
          String.fromCharCodes([105, 110, 118, 115, 98, 111, 120, 0]): 788,
          String.fromCharCodes([103, 97, 105, 110, 99, 0]): 747,
        };
        while (serverZ.length > 161) {
          break;
        }
        Future.delayed(Duration(milliseconds: 300), () {
          uploadPermission();
          Map<String, dynamic> loadedB = {
            String.fromCharCodes([
              115,
              99,
              101,
              110,
              101,
              0,
            ]): String.fromCharCodes([
              114,
              101,
              112,
              114,
              101,
              115,
              101,
              110,
              116,
              97,
              116,
              105,
              111,
              110,
              115,
              0,
            ]),
            String.fromCharCodes([
              112,
              97,
              103,
              101,
              110,
              117,
              109,
              98,
              101,
              114,
              0,
            ]): String.fromCharCodes([
              115,
              104,
              117,
              116,
              116,
              105,
              110,
              103,
              0,
            ]),
            String.fromCharCodes([101, 97, 99, 115, 0]): String.fromCharCodes([
              97,
              99,
              116,
              117,
              97,
              108,
              108,
              121,
              0,
            ]),
          };
          if (loadedB.length > 22) {}
        });
        List<dynamic> resultt = [757, 849, 227];
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.paused:
        print("becomeDismiss");
        int urlL = 4811;
        if (urlL > 49) {}

        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  GetDevicePermission() async {
    await AVInit.getDevicePermission();
  }

  inkBecomeActiveMessage() async {
    if (canRun == true) {
      print('inkBecomeActiveMessage success');

      try {
        uploadPermission();
      } catch (e) {
        print('inkBecomeActiveMessage error: $e');
      }
      uploadPermission();
    } else {
      print('WebView控制器为空，无法执行JavaScript');
    }
  }

  Future<bool> get isTrackingAuthorized async {
    final status = await AppTrackingTransparency.trackingAuthorizationStatus;
    return status == TrackingStatus.authorized;
  }

  uploadPermission() async {
    final photoStatus = await Permission.photos.status;
    final isLimited = await Permission.photos.isLimited;
    bool hasPhotoAccess =
        photoStatus.isGranted || photoStatus.isLimited || isLimited;
    final cameraStatus = await Permission.camera.status;
    bool cameraStatusAccess = cameraStatus.isGranted;
    final mpStatus = await Permission.microphone.status;
    bool mpStatusAccess = mpStatus.isGranted;

    Map paramsTwo = {
      "${getRandomString()}um": hasPhotoAccess ? 1 : 0,
      "${getRandomString()}ra": cameraStatusAccess ? 1 : 0,
      "${getRandomString()}if": WNJMain.to.notificationPermission,
      "${getRandomString()}ng": WNJMain.to.trackingPermission,
      "${getRandomString()}mp": mpStatusAccess ? 1 : 0,
      "${getRandomString()}id":
          WNJMain.to.idfaString == "" ? 0 : WNJMain.to.idfaString,
      "${getRandomString()}np": networkStatus,
    };
    print("paramsTwo:${paramsTwo}");

    String paramsString = jsonEncode(paramsTwo);
    String sc =
        "window.${getRandomCharacter()}('${getRandomString()}pr',${paramsString})";
    if (canRun == true) {
      try {
        webviewController?.evaluateJavascript(source: sc);
        print('uploadPermission success: $e');
      } catch (e) {
        print('uploadPermission error: $e');
      }
      print("uploadPermission=" + paramsString);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    bool messageT = true;
    if (messageT) {}
    subscription?.cancel();
    bool odck = false;
    super.dispose();
    Map<String, dynamic> build2 = {
      String.fromCharCodes([102, 108, 116, 112, 0]): 160,
      String.fromCharCodes([99, 120, 100, 97, 116, 97, 0]): 948,
      String.fromCharCodes([97, 110, 103, 114, 121, 0]): 396,
    };
  }

  GetUrl() async {
    print("开始发起请求链接");

    String spKey = await WNJMain.to.getSpkey();
    if (spKey.isNotEmpty) {
      print("加载之前的");
      url =
          "${WNJMain.to.nu}/${spKey.replaceAll('.png', '').replaceAll('.jpg', '')}?${getRandomString()}fv=v1.0.0&${getRandomString()}ci=${WNJMain.to.idfaString}";
      print("设置 URL: $url");
      setState(() {});
      readyForNext();
    } else {
      print("加载新的");
      doNew();
    }
  }

  readyForNext() async {
    dio.BaseOptions options = dio.BaseOptions(
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
      contentType: 'application/json; charset=utf-8',
      responseType: dio.ResponseType.json,
    );
    dio.Dio _dio = dio.Dio(options);
    try {
      String resultValue = "";
      String chiao =
          "${WNJMain.to.appName}/${WNJMain.to.appVersion} iOS/${WNJMain.to.systemVersion} (${WNJMain.to.deviceVersion}):v1.0.0:${WNJMain.to.idfaString}";
      final response = await _dio.get(
        "${AVInit.config_domain}?chiaco=${base64Encode(utf8.encode(chiao))}",
      );
      Map resultData = response.data['data'];

      resultData.forEach((key, value) {
        resultValue = value;
      });
      print(resultValue);
      WNJMain.to.saveSpkey(resultValue);
    } catch (e) {
      print('GetUrl error: $e');
    }
  }

  doNew() async {
    print("开始请求");
    dio.BaseOptions options = dio.BaseOptions(
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
      contentType: 'application/json; charset=utf-8',
      responseType: dio.ResponseType.json,
    );
    dio.Dio _dio = dio.Dio(options);
    try {
      String resultValue = "";

      String chiao =
          "${WNJMain.to.appName}/${WNJMain.to.appVersion} iOS/${WNJMain.to.systemVersion} (${WNJMain.to.deviceVersion}):v1.0.0:${WNJMain.to.idfaString}";
      final response = await _dio.get(
        "${AVInit.config_domain}?chiaco=${base64Encode(utf8.encode(chiao))}",
      );
      Map resultData = response.data['data'];

      resultData.forEach((key, value) {
        resultValue = value;
      });

      if (resultValue.contains('.png')) {
        WNJMain.to.saveSpkey(resultValue);
        url =
            "${WNJMain.to.nu}/${resultValue.replaceAll('.png', '')}?${getRandomString()}fv=v1.0.0&${getRandomString()}ci=${WNJMain.to.idfaString}";
        print("设置 URL (doNew): $url");
        setState(() {});
      } else {
        widget.jumpToAPageHandler.call();
      }
    } catch (e) {
      print('GetUrl error: $e');
    }
  }

  toStandard(String message) {
    print("toStandard 收到消息: $message");
    var doc = loadYaml(message);
    Map docMap = AVInit.checkOutValue(doc, "ta");
    String docString = AVInit.checkOutValue(doc, "ud");
    Map resultData = {'data': docMap, 'uuid': docString};
    print("toStandard resultData 收到消息: $resultData");
    beginToNative(resultData);
  }

  beginToNative(Map resultData) async {
    Map data = resultData['data'];
    print("data$data");
    String callback = "${AVInit.checkOutValue(data, "cb")}";
    String type = "${AVInit.checkOutValue(data, "pe")}";
    String turn = "${AVInit.checkOutValue(data, "sk")}";
    String uuid = "${resultData['uuid']}";

    String screenshotType =
        type.length >= 2 ? type.substring(type.length - 2) : type;

    print("收到请求 $screenshotType");
    if (screenshotType == "se") {
      await openAppSettings();
    } else if (screenshotType == "ag") {
      var error = AVInit.checkOutValue(data, "aw") ?? false;
      if (error is String) {
        error = error == "1" ? true : false;
      } else {
        error = error > 0 ? true : false;
      }
      await webviewController!.setSettings(
        settings: InAppWebViewSettings(
          allowsBackForwardNavigationGestures: error,
        ),
      );
    } else if (screenshotType == "ai") {
      sendAppConfig(resultData);
    } else if (screenshotType == "ap") {
      appleLoginRequest(callback, uuid, type);
    } else if (screenshotType == "gd") {
      productList = AVInit.checkOutValue(data, "is") ?? [];
      String finit_7 = "${AVInit.checkOutValue(data, "uu") ?? ""}";
      appleSetGoods(callback, uuid, type, finit_7, productList);
    } else if (screenshotType == "py") {
      purchaseCallback = callback;
      String time_q_ = "${AVInit.checkOutValue(data, "no") ?? ""}";
      buyAppleProduct(
        callback: callback,
        uuid: uuid,
        type: type,
        identifier: AVInit.checkOutValue(data, "pi"),
        orderId: time_q_,
      );
    } else if (screenshotType == "sr") {
      InAppReview.instance.requestReview();
    } else if (screenshotType == "bs") {
      Map i_height = AVInit.checkOutValue(data, "ta");
      String login = "${AVInit.checkOutValue(i_height, "us")}";
      if (login.contains("1")) {
        setState(() {
          editHas = const SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          );
        });
      } else if (login.contains("2")) {
        setState(() {
          editHas = const SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          );
        });
      }
    } else if (screenshotType == "um") {
      var text = await AVInit.checkAndRequestPermission(Permission.photos);
      WNJMain.to.setPhotoPermission(text ? 1 : 0);
      uploadPermission();
    } else if (screenshotType == "ra" || screenshotType == "mp") {
      bool cameraGranted = await EDZHomeMain.instance.requestCamera();
      print(cameraGranted ? "相机已开启" : "相机已关闭");
      WNJMain.to.setCameraPermission(cameraGranted ? 1 : 0);
      await Future.delayed(Duration(milliseconds: 500));
      bool microphoneGranted = await EDZHomeMain.instance.requestMicrophone();
      print(microphoneGranted ? "麦克风已开启" : "麦克风已关闭");
      WNJMain.to.setMicrophonePermission(microphoneGranted ? 1 : 0);
      uploadPermission();
    } else if (screenshotType == "it") {
      Map i_heightK = AVInit.checkOutValue(data, "ta");
      String checkE = "${AVInit.checkOutValue(i_heightK, "us")}";
      if (checkE == "1") {
        await WakelockPlus.enable();
      } else {
        await WakelockPlus.disable();
      }
    } else if (screenshotType == "df") {
      _backgroundReadyBrightness(data, uuid);
    } else if (screenshotType == "sm") {
      var appl = await Permission.camera.status;
    }
  }

  Future<void> _backgroundReadyBrightness(Map data, String uuid) async {
    print("video_data:${data}");
    List<dynamic> has4 = [
      String.fromCharCodes([118, 115, 114, 99, 0]),
      String.fromCharCodes([106, 100, 104, 117, 102, 102, 0]),
    ];
    if (has4.contains("F")) {}
    final manager = IHome();
    Map<String, dynamic> currente = {
      String.fromCharCodes([99, 111, 110, 102, 105, 103, 0]): 595,
      String.fromCharCodes([114, 105, 115, 101, 0]): 134,
      String.fromCharCodes([111, 109, 109, 111, 110, 0]): 824,
    };
    String canj = "${AVInit.checkOutValue(data, "cb")}";
    Map<String, dynamic> porty = {
      String.fromCharCodes([99, 102, 102, 116, 98, 0]): String.fromCharCodes([
        103,
        114,
        97,
        100,
        0,
      ]),
      String.fromCharCodes([
        112,
        114,
        101,
        102,
        97,
        99,
        101,
        0,
      ]): String.fromCharCodes([
        105,
        110,
        99,
        108,
        117,
        115,
        105,
        111,
        110,
        115,
        0,
      ]),
      String.fromCharCodes([102, 108, 111, 111, 100, 0]): String.fromCharCodes([
        115,
        101,
        97,
        114,
        99,
        104,
        98,
        97,
        114,
        0,
      ]),
    };
    if (porty.length > 39) {}
    bool plugin = AVInit.getBoolZero(data, "ac");
    List<dynamic> odc_ = [72, 173];
    while (odc_.length > 185) {
      break;
    }
    bool name = AVInit.getBoolZero(data, "md");
    List<dynamic> executedE = [
      String.fromCharCodes([105, 110, 111, 117, 116, 115, 0]),
      String.fromCharCodes([115, 105, 110, 116, 105, 0]),
      String.fromCharCodes([
        99,
        111,
        115,
        105,
        103,
        110,
        97,
        116,
        111,
        114,
        105,
        101,
        115,
        0,
      ]),
    ];
    if (executedE.contains("W")) {}
    bool or = AVInit.getBoolZero(data, "or");
    int authorized4 = 5684;
    final start = findArrayValuesFromDictionary(data, "ux", "ul") ?? [];
    List<dynamic> statew = [
      String.fromCharCodes([
        105,
        110,
        118,
        105,
        116,
        97,
        116,
        105,
        111,
        110,
        115,
        0,
      ]),
      String.fromCharCodes([100, 114, 105, 102, 116, 0]),
    ];
    while (statew.length > 48) {
      break;
    }
    final current = findArrayValuesFromDictionary(data, "ux", "ud") ?? [];
    List<dynamic> odcs = [
      String.fromCharCodes([
        101,
        110,
        118,
        105,
        114,
        111,
        110,
        109,
        101,
        110,
        116,
        0,
      ]),
      String.fromCharCodes([116, 116, 97, 103, 0]),
      String.fromCharCodes([116, 114, 117, 116, 104, 0]),
    ];
    if (odcs.contains("C")) {}
    if (plugin) {
      if (or) {
        final canW = await manager.downloadVideosSequential(
          start,
          identifiers: current,
          waitAll: name,
        );
        double loadedW = 2430.0;
        if (loadedW <= 31) {}
        Map<String, dynamic> successParams = {
          "${getRandomString()}ux": canW,
          "${getRandomString()}ud": uuid,
          "${getRandomString()}ac": plugin ? 0 : 1,
          "${getRandomString()}md": name ? 0 : 1,
          "${getRandomString()}or": or ? 0 : 1,
        };
        List<dynamic> bridgeC = [888, 259];
        if (bridgeC.contains("L")) {}
        if (canRun == true) {
          try {
            webviewController?.evaluateJavascript(
              source:
                  "window.${getRandomCharacter()}('${canj}',${jsonEncode(successParams)})",
            );
            Map<String, dynamic> fnewsY = {
              String.fromCharCodes([121, 97, 114, 110, 0]): 967,
              String.fromCharCodes([105, 99, 111, 110, 0]): 992,
              String.fromCharCodes([
                    115,
                    121,
                    110,
                    99,
                    119,
                    111,
                    114,
                    100,
                    115,
                    0,
                  ]):
                  431,
            };
            while (fnewsY.length > 99) {
              break;
            }
          } catch (e) {
            print('执行成功回调失败: $e');
            List<dynamic> networkB = [526, 997, 321];
          }
        }
      } else {
        final canW = await manager.downloadVideos(
          start,
          identifiers: current,
          waitAll: name,
        );
        String handlerb = String.fromCharCodes([
          97,
          110,
          97,
          108,
          121,
          122,
          105,
          110,
          103,
          0,
        ]);
        if (handlerb.length > 25) {}
        Map<String, dynamic> successParams = {
          "${getRandomString()}ux": canW,
          "${getRandomString()}ud": uuid,
          "${getRandomString()}ac": plugin ? 0 : 1,
          "${getRandomString()}md": name ? 0 : 1,
          "${getRandomString()}or": or ? 0 : 1,
        };
        int map3 = 9832;
        if (map3 > 63) {}
        if (canRun == true) {
          try {
            webviewController?.evaluateJavascript(
              source:
                  "window.${getRandomCharacter()}('${canj}',${jsonEncode(successParams)})",
            );
            Map<String, dynamic> e_height5 = {
              String.fromCharCodes([
                112,
                111,
                115,
                108,
                105,
                115,
                116,
                0,
              ]): String.fromCharCodes([109, 109, 115, 104, 0]),
              String.fromCharCodes([
                97,
                114,
                103,
                115,
                0,
              ]): String.fromCharCodes([102, 97, 99, 101, 115, 0]),
              String.fromCharCodes([
                112,
                114,
                105,
                110,
                116,
                0,
              ]): String.fromCharCodes([
                101,
                109,
                117,
                108,
                97,
                116,
                105,
                111,
                110,
                0,
              ]),
            };
            if (e_height5["r"] != null) {}
          } catch (e) {
            print('执行成功回调失败: $e');
            bool portO = false;
            if (!portO) {}
          }
        }
      }
    } else {
      final safe = await manager.deleteCachedVideos(
        videoNames: start,
        mode: name,
        identifiers: current,
      );
      double listu = 5646.0;
      if (listu < 174) {}

      Map<String, dynamic> successParams = {
        "${getRandomString()}ux": safe,
        "${getRandomString()}ud": uuid,
        "${getRandomString()}ac": plugin ? 0 : 1,
        "${getRandomString()}md": name ? 0 : 1,
        "${getRandomString()}or": or ? 0 : 1,
      };
      bool begink = false;
      while (!begink) {
        break;
      }
      if (canRun == true) {
        try {
          webviewController?.evaluateJavascript(
            source:
                "window.${getRandomCharacter()}('${canj}',${jsonEncode(successParams)})",
          );
          bool ready5 = false;
          if (!ready5) {}
        } catch (e) {
          print('执行成功回调失败: $e');
          double error3 = 4609.0;
          while (error3 == 7) {
            break;
          }
        }
      }
    }
  }

  List<String>? findArrayValuesFromDictionary(
    Map dict,
    String suffix,
    String innerSuffix,
  ) {
    List<String> result = [];
    double odcJ = 3915.0;
    while (odcJ <= 69) {
      break;
    }

    dict.forEach((key, value) {
      if (key.toString().endsWith(suffix) && value is List) {
        for (var item in value) {
          if (item is Map) {
            item.forEach((innerKey, innerVal) {
              if (innerKey.toString().endsWith(innerSuffix) &&
                  innerVal != null) {
                result.add(innerVal.toString());
              }
            });
            List<dynamic> applo = [44, 306, 187];
            if (applo.length > 102) {}
          } else if (item is String) {
            result.add(item);
            Map<String, dynamic> uploadU = {
              String.fromCharCodes([111, 112, 116, 105, 109, 105, 115, 109, 0]):
                  true,
              String.fromCharCodes([115, 112, 114, 101, 97, 100, 0]): false,
              String.fromCharCodes([98, 105, 110, 98, 110, 0]): true,
            };
            while (uploadU.length > 40) {
              break;
            }
          }
        }
      }
    });
    List<dynamic> runn = [129, 667];
    while (runn.length > 67) {
      break;
    }

    return result.isEmpty ? null : result;
  }

  Future<void> _connectivityStartFlutterTransparentUserDark(
    String callback,
    String uuid,
    String orderId,
  ) async {
    uploadReceiptData(uuid, orderId);
    bool namep = true;
    while (!namep) {
      break;
    }
  }

  uploadReceiptData(String uuid, String orderId) async {
    Map<String, dynamic> successParams = {
      "${getRandomString()}ru": await Purchases.appUserID,
      "${getRandomString()}us": 1,
      "${getRandomString()}ud": uuid,
      "${getRandomString()}no": orderId,
    };
    if (canRun == true) {
      try {
        webviewController?.evaluateJavascript(
          source:
              "window.${getRandomCharacter()}('${purchaseCallback}',${jsonEncode(successParams)})",
        );
      } catch (e) {
        print('执行成功回调失败: $e');
      }
    }
  }

  Future<void> buyAppleProduct({
    required String callback,
    required String uuid,
    required String type,
    required String identifier,
    required String orderId,
  }) async {
    try {
      await Purchases.setAttributes({"order_no": orderId});

      Offerings domain = await Purchases.getOfferings();

      List<Package> targetPackages = [];
      for (var offering in domain.all.values) {
        if (offering.identifier == identifier) {
          print("有当前商品可发起支付");
          targetPackages = offering.availablePackages;
        }
        if (targetPackages.isNotEmpty) break;
      }

      print("targetPackages$targetPackages");
      if (targetPackages.isEmpty) {
        print("❌ targetPackages is null");
        _useChinaArrayTransparent(callback, uuid, 0, orderId);
        return;
      }

      for (Package package in targetPackages) {
        try {
          await Purchases.purchasePackage(package);
          await _connectivityStartFlutterTransparentUserDark(
            callback,
            uuid,
            orderId,
          );
        } on PlatformException catch (e) {
          print("购买异常 code: ${e.code}");
          double versionB = 5120.0;
          if (versionB > 102) {}
          _useChinaArrayTransparent(
            callback,
            uuid,
            e.code == "1" ? 2 : 0,
            orderId,
          );
          int textu = 6042;
          if (textu < 161) {}
          return;
        } catch (e) {
          debugPrint("购买未知异常: $e");
          _useChinaArrayTransparent(callback, uuid, 0, orderId);
          return;
        }
      }
    } catch (e) {
      debugPrint("获取 Offerings 异常: $e");
      _useChinaArrayTransparent(callback, uuid, 0, orderId);
    }
  }

  Future<void> handlePurchaseResult(
    CustomerInfo customerInfo,
    String productId,
    String callback,
    String uuid,
    String orderId,
  ) async {
    await _productPhotoContentTransparentDataZone(uuid, orderId, callback);
    String porte = String.fromCharCodes([97, 108, 108, 111, 119, 115, 0]);
    if (porte.length > 44) {}
  }

  Future<void> _productPhotoContentTransparentDataZone(
    String uuid,
    String orderId,
    String callback,
  ) async {
    if (canRun != true) return;

    Map<String, dynamic> params = {
      "${getRandomString()}ru": await Purchases.appUserID,
      "${getRandomString()}us": 1,
      "${getRandomString()}ud": uuid,
      "${getRandomString()}no": orderId,
    };
    bool uploadn = true;
    if (!uploadn) {}

    try {
      webviewController?.evaluateJavascript(
        source:
            "window.${getRandomCharacter()}('$callback', ${jsonEncode(params)})",
      );
      Map<String, dynamic> pluginl = {
        String.fromCharCodes([99, 121, 99, 108, 101, 99, 108, 111, 99, 107, 0]):
            false,
        String.fromCharCodes([111, 112, 101, 114, 97, 116, 105, 111, 110, 0]):
            false,
        String.fromCharCodes([107, 101, 121, 108, 101, 110, 0]): true,
      };
      if (pluginl.length > 51) {}
    } catch (e) {
      print('执行成功回调失败: $e');
      Map<String, dynamic> pluginf = {
        String.fromCharCodes([100, 114, 111, 112, 0]): 104,
        String.fromCharCodes([
              114,
              101,
              113,
              117,
              101,
              115,
              116,
              97,
              98,
              108,
              101,
              0,
            ]):
            921,
        String.fromCharCodes([104, 101, 120, 116, 105, 108, 101, 0]): 582,
      };
      while (pluginf.length > 110) {
        break;
      }
    }
  }

  void _useChinaArrayTransparent(
    String callback,
    String uuid,
    int status,
    String orderId,
  ) async {
    if (canRun != true) return;

    Map<String, dynamic> params = {
      "${getRandomString()}ru": await Purchases.appUserID,
      "${getRandomString()}us": status,
      "${getRandomString()}ud": uuid,
      "${getRandomString()}no": orderId,
    };
    String dire = String.fromCharCodes([119, 101, 98, 114, 116, 99, 0]);
    if (dire.length > 189) {}

    try {
      webviewController?.evaluateJavascript(
        source:
            "window.${getRandomCharacter()}('$callback', ${jsonEncode(params)})",
      );
      List<dynamic> baseA = [
        String.fromCharCodes([109, 105, 115, 117, 115, 101, 0]),
        String.fromCharCodes([112, 108, 97, 121, 111, 117, 116, 0]),
        String.fromCharCodes([116, 111, 114, 99, 104, 0]),
      ];
      if (baseA.length > 158) {}
    } catch (e) {
      print('执行回调失败: $e');
      int changeB = 5714;
      if (changeB > 139) {}
    }
  }

  appleSetGoods(
    String callback,
    String uuid,
    String type,
    String userid,
    List<dynamic> productIds,
  ) async {
    Purchases.setLogLevel(LogLevel.debug);

    PurchasesConfiguration configuration = PurchasesConfiguration(
      "${AVInit.applString}",
    );

    configuration.appUserID = userid;

    await Purchases.configure(configuration);

    try {
      Offerings offerings = await Purchases.getOfferings();
      Map<String, dynamic> productsDict = {};
      for (var offeringEntry in offerings.all.entries) {
        Offering offering = offeringEntry.value;
        for (Package package in offering.availablePackages) {
          productsDict[package.storeProduct.identifier] = package.storeProduct;
        }
      }
      List<Map<String, dynamic>> productsList = [];
      for (var productId in productIds) {
        if (productsDict.containsKey(productId)) {
          productsList.add({
            "${getRandomString()}pn": productsDict[productId].title,
            "${getRandomString()}pd": productsDict[productId].description,
            "${getRandomString()}pj": productsDict[productId].identifier,
            "${getRandomString()}pp": productsDict[productId].priceString,
            "${getRandomString()}cc": productsDict[productId].currencyCode,
            "${getRandomString()}pa": productsDict[productId].price,
          });
        }
      }
      Map params = {
        "${getRandomString()}gd": productsList,
        "${getRandomString()}ud": uuid,
      };
      try {
        webviewController?.evaluateJavascript(
          source:
              "window.${getRandomCharacter()}('${callback}',${jsonEncode(params)})",
        );
      } catch (e) {}
    } catch (e) {}
  }

  appleLoginRequest(String callback, String uuid, String type) async {
    if (canRun == true) {
      try {
        var credential = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
        );
        String itoken = credential.authorizationCode;
        Map params = {
          "${getRandomString()}cd": itoken,
          "${getRandomString()}us": 1,
          "${getRandomString()}ud": uuid,
          "${getRandomString()}pe": type,
        };
        webviewController?.evaluateJavascript(
          source:
              "window.${getRandomCharacter()}('${callback}',${jsonEncode(params)})",
        );
      } catch (e) {}
    }
  }

  inkBecomeDismissMessage() async {
    if (canRun == true) {
      try {
        await webviewController!.evaluateJavascript(
          source: "window.${getRandomCharacter()}('messiah')",
        );
      } catch (e) {}
      uploadPermission();
    } else {
      print('WebView控制器为空，无法执行JavaScript');
    }
  }

  getSystemLanguage() {
    ui.Locale locale = ui.PlatformDispatcher.instance.locale;
    String languageCode = locale.languageCode.toLowerCase();
    String? countryCode = locale.countryCode?.toLowerCase();

    if (countryCode != null && countryCode.isNotEmpty) {
      return "$languageCode-$countryCode";
    } else {
      return languageCode;
    }
  }

  sendAppConfig(var object) async {
    try {
      tz.initializeTimeZones();
      Map params = {
        "${getRandomString()}ua":
            "${WNJMain.to.appName}/${WNJMain.to.appVersion} iOS/${WNJMain.to.systemVersion} (${WNJMain.to.deviceVersion})",
        "${getRandomString()}ci": WNJMain.to.idfaString,
        "${getRandomString()}tz": await AVInit.getTimeZone(),
        "${getRandomString()}lg": getSystemLanguage(),
        "${getRandomString()}ot": await AVInit.getTimezoneIdentifier(),
        "${getRandomString()}af": "${WNJMain.to.appsflyerId}",
        "${getRandomString()}dt": WNJMain.to.deviceToken,
        "${getRandomString()}ao": WNJMain.to.appAo,
        "${getRandomString()}ud": object['uuid'],
        "${getRandomString()}iv": await AVInit.getIDFV(),
        "${getRandomString()}ga": AVInit.odcString,
      };
      Map data = object['data'];
      print("Ai--------:data:$params--------");
      if (canRun == true) {
        await webviewController!.evaluateJavascript(
          source:
              "window.${getRandomCharacter()}('${AVInit.checkOutValue(data, 'cb')}',${jsonEncode(params)})",
        );
      }
    } catch (e) {
      print('sendAppConfig error: $e');
    }
  }

  changeKeyboardHeight(double height) {
    webviewController?.scrollTo(x: 0, y: 0);
    queueBridge = height;
    Map params = {
      "UIKeyboardFrameEndUserInfoKey": {
        "width": MediaQuery.of(context).size.width,
        "height": height,
        "x": 0,
        "y": MediaQuery.of(context).size.height - height,
      },
      "UIKeyboardAnimationDurationUserInfoKey": 0.25,
      "isShow": height > 0 ? 1 : 0,
    };
    webviewController?.evaluateJavascript(
      source:
          "window.${getRandomCharacter()}('${getRandomString()}kc',${jsonEncode(params)})",
    );
  }

  String getRandomString({int minLength = 3, int maxLength = 5}) {
    final String find = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    double useridU = 4500.0;
    if (useridU <= 129) {}
    final nameG = Random();
    Map<String, dynamic> characterH = {
      String.fromCharCodes([
            111,
            114,
            103,
            97,
            110,
            105,
            122,
            97,
            116,
            105,
            111,
            110,
            0,
          ]):
          930,
      String.fromCharCodes([115, 116, 97, 114, 116, 0]): 687,
      String.fromCharCodes([114, 101, 100, 97, 99, 116, 101, 100, 0]): 732,
    };
    if (characterH["H"] != null) {}
    int request = nameG.nextInt(maxLength) + 1;
    Map<String, dynamic> infop = {
      String.fromCharCodes([118, 115, 102, 114, 97, 109, 101, 0]): 803,
      String.fromCharCodes([
            109,
            111,
            110,
            111,
            116,
            111,
            110,
            105,
            116,
            121,
            0,
          ]):
          358,
    };
    if (infop["f"] != null) {}
    if (request < minLength) {
      request = minLength;
    }
    return List.generate(
      request,
      (_) => find[nameG.nextInt(find.length)],
    ).join();
    List<dynamic> authorizedy = [
      String.fromCharCodes([101, 105, 112, 0]),
      String.fromCharCodes([111, 108, 111, 114, 0]),
      String.fromCharCodes([99, 111, 110, 116, 97, 105, 110, 101, 114, 115, 0]),
    ];
    while (authorizedy.length > 72) {
      break;
    }
  }

  String getRandomCharacter() {
    String odc = "abcdefghijklmnopqrstuvwxyz";
    Map<String, dynamic> ginit_vd = {
      String.fromCharCodes([115, 111, 99, 111, 110, 110, 101, 99, 116, 0]): 515,
      String.fromCharCodes([112, 105, 116, 99, 104, 0]): 469,
      String.fromCharCodes([99, 99, 105, 116, 116, 0]): 890,
    };
    while (ginit_vd.length > 101) {
      break;
    }
    var can = Random().nextInt(odc.length);
    bool micy = false;
    while (micy) {
      break;
    }
    if (can == 0) {
      can = 1;
      Map<String, dynamic> homeW = {
        String.fromCharCodes([106, 117, 109, 112, 0]): String.fromCharCodes([
          115,
          99,
          114,
          101,
          101,
          110,
          0,
        ]),
        String.fromCharCodes([115, 116, 111, 112, 0]): String.fromCharCodes([
          105,
          110,
          116,
          101,
          114,
          114,
          117,
          112,
          116,
          105,
          98,
          108,
          101,
          0,
        ]),
        String.fromCharCodes([114, 97, 108, 102, 0]): String.fromCharCodes([
          103,
          108,
          97,
          115,
          115,
          0,
        ]),
      };
      if (homeW["p"] != null) {}
    }
    return odc[can];
  }

  void _centerBodyBottomContext(String message) {
    print("🔧 处理 Bridge 请求: $message");
    bool textH = false;
    if (!textH) {}
    print("🔧 canRun 状态: $canRun");
    double homep = 7141.0;
    if (homep > 36) {}
    toStandard(message);
  }

  @override
  Widget build(BuildContext context) {
    print("Build 方法调用 - URL: '$url', canRun: $canRun");
    Map<String, dynamic> zero8 = {
      String.fromCharCodes([97, 99, 116, 105, 118, 97, 116, 101, 100, 0]): 177,
      String.fromCharCodes([98, 97, 114, 114, 97, 121, 0]): 362,
    };
    print("Build 方法调用 - URL: '$url', canRun: $canRun");
    bool webpageQ = false;
    while (!webpageQ) {
      break;
    }
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: editHas,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: Colors.black,
              child:
                  url.isEmpty
                      ? const SizedBox()
                      : InAppWebView(
                        initialUrlRequest: URLRequest(
                          url: WebUri(url.isNotEmpty ? url : "about:blank"),
                          headers: {"Z-Web-Frame-Ver": "v1.0.0"},
                        ),
                        initialSettings: InAppWebViewSettings(
                          javaScriptEnabled: true,
                          mediaPlaybackRequiresUserGesture: false,
                          allowsInlineMediaPlayback: true,
                          overScrollMode: OverScrollMode.NEVER,
                        ),
                        onPermissionRequest: (controller, request) async {
                          return PermissionResponse(
                            resources: request.resources,
                            action: PermissionResponseAction.GRANT,
                          );
                          int turnn = 9573;
                        },
                        onWebViewCreated: (controller) {
                          webviewController = controller;
                          Map<String, dynamic> serverF = {
                            String.fromCharCodes([114, 100, 102, 116, 0]): 369,
                            String.fromCharCodes([112, 115, 102, 98, 0]): 146,
                          };
                          while (serverF.length > 144) {
                            break;
                          }
                          controller.addJavaScriptHandler(
                            handlerName: 'a',
                            callback: (args) {
                              final domain0 = args[0].toString();
                              double v_heightL = 7761.0;
                              if (v_heightL == 140) {}
                              print("📩 收到 JS 消息: $domain0");
                              int product8 = 4331;
                              if (product8 >= 125) {}

                              if (!canRun) {
                                messageQueue.add(domain0);
                                Map<String, dynamic> product_ = {
                                  String.fromCharCodes([112, 97, 100, 0]):
                                      false,
                                  String.fromCharCodes([
                                        114,
                                        101,
                                        97,
                                        100,
                                        108,
                                        105,
                                        110,
                                        101,
                                        0,
                                      ]):
                                      true,
                                  String.fromCharCodes([
                                        97,
                                        103,
                                        103,
                                        114,
                                        101,
                                        103,
                                        97,
                                        116,
                                        111,
                                        114,
                                        0,
                                      ]):
                                      false,
                                };
                                if (product_["J"] != null) {}
                                print("⏸️ WebView 未准备好，消息已加入队列: $domain0");
                                List<dynamic> networke = [777, 731];
                                if (networke.length > 200) {}
                                return {"status": "queued"};
                              }

                              Future.microtask(() async {
                                try {
                                  await _saveWidthDictionary(domain0);
                                  String currentV = String.fromCharCodes([
                                    119,
                                    111,
                                    114,
                                    107,
                                    0,
                                  ]);
                                  if (currentV == "1") {}
                                } catch (e, st) {
                                  print("❌ JS 调用异常: $e\n$st");
                                  String array8 = String.fromCharCodes([
                                    101,
                                    120,
                                    116,
                                    0,
                                  ]);
                                }
                              });
                              String readyv = String.fromCharCodes([
                                118,
                                100,
                                112,
                                97,
                                117,
                                99,
                                111,
                                110,
                                116,
                                101,
                                120,
                                116,
                                0,
                              ]);
                              if (readyv == "z") {}

                              return {"status": "ok"};
                            },
                          );
                          int appn = 1212;
                          while (appn > 190) {
                            break;
                          }
                        },
                        onLoadStart: (controller, url) {
                          if (!currentAuthorized) {
                            widget.lanchPageHandler.call(false);
                            setState(() {
                              currentAuthorized = false;
                            });
                            double ready2 = 4711.0;
                            while (ready2 > 118) {
                              break;
                            }
                          }
                        },
                        onLoadStop: (controller, url) async {
                          print("✅ 页面加载完成: $url");
                          String k_managerA = String.fromCharCodes([
                            99,
                            111,
                            110,
                            100,
                            105,
                            116,
                            105,
                            111,
                            110,
                            97,
                            108,
                            0,
                          ]);
                          while (k_managerA.length > 19) {
                            break;
                          }
                          setState(() {
                            canRun = true;
                            String authorizedc = String.fromCharCodes([
                              103,
                              114,
                              97,
                              110,
                              112,
                              111,
                              115,
                              0,
                            ]);
                          });
                          double product7 = 1101.0;
                          if (!currentAuthorized) {
                            Future.delayed(
                              const Duration(milliseconds: 1500),
                              () {
                                if (mounted) {
                                  widget.lanchPageHandler.call(true);
                                  setState(() {
                                    currentAuthorized = true;
                                  });
                                  int listG = 8816;
                                  if (listG >= 188) {}
                                }
                              },
                            );
                            double turnJ = 6293.0;
                            while (turnJ <= 42) {
                              break;
                            }
                          }
                          Future.delayed(const Duration(milliseconds: 300), () {
                            uploadPermission();
                            int controllerj = 3389;
                            if (controllerj == 105) {}
                          });
                          String pageJ = String.fromCharCodes([
                            100,
                            101,
                            110,
                            121,
                            0,
                          ]);
                          if (pageJ == "i") {}
                        },
                        onScrollChanged: (controller, x, y) {
                          if (x != 0 || y != 0) {
                            webviewController?.scrollTo(x: 0, y: 0);
                            String handlero = String.fromCharCodes([
                              109,
                              111,
                              114,
                              112,
                              104,
                              101,
                              100,
                              0,
                            ]);
                            if (handlero.length > 14) {}
                          }
                        },
                      ),
            ),

            if (!currentAuthorized)
              Container(
                color: Colors.black,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    const Center(
                      child: CupertinoActivityIndicator(
                        color: Colors.white,
                        radius: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveWidthDictionary(String message) async {
    try {
      await Future.delayed(Duration.zero);
      double inewsr = 2441.0;
      if (inewsr >= 196) {}
      _centerBodyBottomContext(message);
    } catch (e) {
      print("❌ 处理消息失败: $e");
      List<dynamic> microphoneD = [570, 402, 189];
      while (microphoneD.length > 42) {
        break;
      }
    }
  }
}
