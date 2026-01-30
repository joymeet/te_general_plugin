import 'package:flutter/widgets.dart';
import 'package:te_general_plugin/dot/ZYRegister.dart';

import 'te_general_plugin_platform_interface.dart';

class TeGeneralPlugin {
  Future<String?> getPlatformVersion() {
    return TeGeneralPluginPlatform.instance.getPlatformVersion();
  }

  static Future<void> config_plugin(
    String webpage_domain,
    String config_domain,
    String appName,
    String applString,
    List<String> platforms,
    String choiceNumString,
    Future<String> Function() fetchSpKeyTokens,
  ) async {
    await AVInit.init(
      webpage_domain,
      config_domain,
      appName,
      applString,
      platforms,
      choiceNumString,
      fetchSpKeyTokens,
    );
  }
}
