import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'te_general_plugin_platform_interface.dart';

/// An implementation of [TeGeneralPluginPlatform] that uses method channels.
class MethodChannelTeGeneralPlugin extends TeGeneralPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('te_general_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
