import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';
import 'package:te_general_plugin/dot/OCZInfo.dart';
import 'package:te_general_plugin/dot/XANHome.dart';
import 'package:te_general_plugin/te_general_plugin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await TeGeneralPlugin.config_plugin(
    "https://xin5vh.qw7lz.com",
    "https://9ztfnm.qw7lz.com/vbiexe",
    "festa",
    "appl_qIecjzEFXeOnRSpdZcZewCnujZB",
    ['snssdk1128://', "mqq://", "weixin://"],
    'type1',
    () async {
      await CheckUnitl.token();
      return CheckUnitl.tokenStr;
    },
  );
  await CheckUnitl.beginAf();
  runApp(const MyApp());
}

class CheckUnitl {
  CheckUnitl._();
  static var tokenStr = "";

  static Future<String> getGoogleAds() async {
    const MethodChannel channel = MethodChannel('fecheckStatus');
    try {
      final result = await channel.invokeMethod('fetejdtdgdgtga');
      return result;
    } catch (e) {
      return "";
    }
  }

  static Future<String> beginAf() async {
    try {
      const MethodChannel channel = MethodChannel('fecheckStatus');
      final result = await channel.invokeMethod('febeginAppflyer');
      if (result != "" && result != null) {
        return result;
      } else {
        return '';
      }
    } catch (e) {
      return '';
    }
  }

  static Future<void> token() async {
    final MethodChannel channel = MethodChannel('requirePushToken');
    channel.setMethodCallHandler((MethodCall call) async {
      if (call.method == 'requirePushTokenReceived') {
        CheckUnitl.tokenStr = call.arguments;
      }
    });
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
                  //isFromYmCustomWp == true 去1 false 去2
                  setState(() {
                    isa = isFromYmCustomWp;
                  });
                },
              )
              : TQIInfoModity(
                jumpToAPageHandler: () {
                  //去1
                },
                fetchSpKeyOdcString: () async {
                  return await CheckUnitl.getGoogleAds();
                },
                fetchSpKeyAppflyerId: () async {
                  return await CheckUnitl.beginAf();
                },
                contentBuilder: (context) {
                  return Container(color: Colors.yellow);
                },
              ),
    );
  }
}
