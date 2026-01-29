import 'package:flutter/widgets.dart';
import 'package:te_general_plugin/abcom/ZYRegister.dart';

import 'te_general_plugin_platform_interface.dart';

class TeGeneralPlugin {
  Future<String?> getPlatformVersion() {
    return TeGeneralPluginPlatform.instance.getPlatformVersion();
  }

  static Future<void> config_plugin(
    String webpage_domain, //网页域名
    String config_domain, //配置域名
    String appName, //app名称
    String applString, //appl标识
    List<String> platforms,
    Future<String> Function() fetchSpKeyTokens,
    Future<bool> Function() fetchSpKeyNeedKeyBoard,
  ) async {
    await AVInit.init(
      webpage_domain,
      config_domain,
      appName,
      applString,
      platforms,
      fetchSpKeyTokens,
      // fetchSpKeyNeedKeyBoard,
    );
    // await AppConfigInit.init(
    //   webpage_domain,
    //   config_domain,
    //   appName,
    //   applString,
    //   platforms,
    //   fetchSpKeyTokens,
    //   fetchSpKeyNeedKeyBoard,
    // );
  }
}
