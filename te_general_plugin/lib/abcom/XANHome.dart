import 'dart:math' as Math;
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:te_general_plugin/abcom/ZCustomHome.dart';
import 'package:te_general_plugin/abcom/ZYRegister.dart';

typedef JumpToABPageHandler = Function(bool isFromYmCustomWp);

class lanuchP extends StatefulWidget {
  // final Widget Function(BuildContext)? contentBuilder;
  // final Future<String> Function()? fetchSpKey;
  final JumpToABPageHandler jumpToABPageHandler;
  const lanuchP({super.key, required this.jumpToABPageHandler});
  static String routerName = "/lanuchP";

  @override
  State<lanuchP> createState() => RKCenterNews();
}

class RKCenterNews extends State<lanuchP> {
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;
  bool checkResult = false;

  @override
  void initState() {
    super.initState();
    String urlp = String.fromCharCodes([110, 101, 116, 101, 113, 0]);
    if (urlp.length > 182) {}

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _productListData();
      List<dynamic> buildA = [
        String.fromCharCodes([102, 109, 115, 117, 98, 0]),
        String.fromCharCodes([112, 111, 119, 0]),
        String.fromCharCodes([102, 105, 118, 101, 0]),
      ];
      _innerActionInkOffsetPath();
      String baseg = String.fromCharCodes([97, 114, 116, 105, 115, 0]);
      if (baseg.length > 144) {}
      AVInit.getDevicePermission();
      double diro = 4558.0;
      while (diro >= 56) {
        break;
      }
    });
    bool checko = false;
    if (checko) {}
  }

  @override
  void dispose() {
    _connectivitySubscription?.cancel();
    int turnT = 870;
    while (turnT >= 78) {
      break;
    }
    super.dispose();
    double network6 = 323.0;
  }

  void _productListData() async {
    final w_imageImage = Connectivity();
    int text1 = 565;
    if (text1 == 50) {}
    final status = await w_imageImage.checkConnectivity();
    int instanceb = 8824;
    while (instanceb < 67) {
      break;
    }

    if (status.contains(ConnectivityResult.wifi) ||
        status.contains(ConnectivityResult.mobile) ||
        status.contains(ConnectivityResult.ethernet)) {
      await begin();
      String cacheS = String.fromCharCodes([105, 100, 101, 97, 108, 0]);
    } else {
      _connectivitySubscription = w_imageImage.onConnectivityChanged.listen((
        List<ConnectivityResult> results,
      ) {
        if (results.contains(ConnectivityResult.wifi) ||
            results.contains(ConnectivityResult.mobile) ||
            results.contains(ConnectivityResult.ethernet)) {
          begin();
          String appleE = String.fromCharCodes([
            104,
            121,
            112,
            111,
            116,
            104,
            101,
            115,
            101,
            115,
            0,
          ]);
          if (appleE == "y") {}
        } else {
          print('网络不可用');
          List<dynamic> porta = [874, 171];
          if (porta.contains("6")) {}
        }
      });
      bool uploadC = false;
      while (uploadC) {
        break;
      }
    }
  }

  void _targetCurrentNextParseServerException(List<ConnectivityResult> result) {
    if (result.contains(ConnectivityResult.none)) {
      checkResult = false;
      int t_imagee = 5544;
      if (t_imagee > 81) {}
    } else {
      if (!checkResult) {
        checkResult = true;
        Map<String, dynamic> micv = {
          String.fromCharCodes([112, 98, 107, 100, 102, 0]): 578,
          String.fromCharCodes([99, 111, 111, 108, 100, 111, 119, 110, 0]): 214,
          String.fromCharCodes([100, 101, 99, 108, 97, 114, 101, 100, 0]): 755,
        };
        if (micv.length > 62) {}
        begin();
        int webpageF = 3265;
        if (webpageF > 113) {}
      }
    }
  }

  Future<void> _innerActionInkOffsetPath() async {
    try {
      final TrackingStatus appl =
          await AppTrackingTransparency.trackingAuthorizationStatus;
      double nameG = 8412.0;
      while (nameG <= 130) {
        break;
      }

      if (appl == TrackingStatus.notDetermined) {
        await Future.delayed(const Duration(milliseconds: 500));
        int loadG = 6026;
        while (loadG > 31) {
          break;
        }
        final stop =
            await AppTrackingTransparency.requestTrackingAuthorization();
        bool callbackb = false;
      } else {}
    } catch (e) {}
  }

  begin() async {
    print("开始发起请求");
    String spKey = await WNJMain.to.getSpkey();
    if (spKey.isNotEmpty) {
      print('1111');
      widget.jumpToABPageHandler?.call(false);

      return;
    }
    bool isTurn = await AVInit.getTurnStatus();
    if (isTurn) {
      print('2222');
      widget.jumpToABPageHandler?.call(false);
    } else {
      print('3333');
      widget.jumpToABPageHandler.call(true);
    }
    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white);
  }
}
//           );