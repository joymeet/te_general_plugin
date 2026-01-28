import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'te_general_plugin_method_channel.dart';

abstract class TeGeneralPluginPlatform extends PlatformInterface {
  /// Constructs a TeGeneralPluginPlatform.
  TeGeneralPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static TeGeneralPluginPlatform _instance = MethodChannelTeGeneralPlugin();

  /// The default instance of [TeGeneralPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelTeGeneralPlugin].
  static TeGeneralPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TeGeneralPluginPlatform] when
  /// they register themselves.
  static set instance(TeGeneralPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
