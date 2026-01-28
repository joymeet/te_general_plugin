import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:te_general_plugin/abcom/OCZInfo.dart';
import 'package:te_general_plugin/abcom/XANHome.dart';
import 'package:te_general_plugin/abcom/base_info.dart';
import 'package:te_general_plugin/te_general_plugin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CheckUnitl.beginAf();
  await CheckUnitl.token();
  final odcString = await CheckUnitl.getGoogleAds();
  // Get.put(BaseInfo());
  await TeGeneralPlugin.config_plugin(
    "https://xin5vh.qw7lz.com", //网页域名
    "https://9ztfnm.qw7lz.com/vbiexe", //配置域名
    "festa", //app名称
    "appl_qIecjzEFXeOnRSpdZcZewCnujZB", //appl标识
    odcString, //device token
  );
  runApp(const MyApp());
}

class CheckUnitl {
  CheckUnitl._();
  static Future<String> getGoogleAds() async {
    const MethodChannel channel = MethodChannel('fecheckStatus');
    try {
      final result = await channel.invokeMethod('fetejdtdgdgtga');
      return result;
    } catch (e) {
      return "";
    }
  }

  static Future<void> token() async {
    final MethodChannel channel = MethodChannel('requirePushToken');
    channel.setMethodCallHandler((MethodCall call) async {
      if (call.method == 'requirePushTokenReceived') {
        var token = call.arguments;
        BaseInfo.to.saveDeviceToken(token);
      }
    });
  }

  static Future<void> beginAf() async {
    try {
      // 尝试使用 MethodChannel 检测键盘（需要原生支持）
      const MethodChannel channel = MethodChannel('fecheckStatus');
      final result = await channel.invokeMethod('febeginAppflyer');
      print('WIbeginAppflyer: $result');
      if (result != "" && result != null) {
        BaseInfo.to.setAppsflyerId(result);
      }
    } catch (e) {
      // 如果 MethodChannel 调用失败，回退到语言检测
      debugPrint('MethodChannel failed, falling back to locale detection: $e');
    }
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  bool isa = true;
  final _teGeneralPlugin = TeGeneralPlugin();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await _teGeneralPlugin.getPlatformVersion() ??
          'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          isa
              ? lanuchP(
                jumpToABPageHandler: (isFromYmCustomWp) {
                  //isFromYmCustomWp == true 去a面 false 去b面
                  setState(() {
                    isa = isFromYmCustomWp;
                  });
                },
              )
              : TQIInfoModity(
                jumpToAPageHandler: () {
                  //去a面
                },
                lanchPageHandler: () {
                  //启动页
                },
              ),
    );
  }
}
