import 'package:flutter_test/flutter_test.dart';
import 'package:te_general_plugin/te_general_plugin.dart';
import 'package:te_general_plugin/te_general_plugin_platform_interface.dart';
import 'package:te_general_plugin/te_general_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTeGeneralPluginPlatform
    with MockPlatformInterfaceMixin
    implements TeGeneralPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TeGeneralPluginPlatform initialPlatform = TeGeneralPluginPlatform.instance;

  test('$MethodChannelTeGeneralPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTeGeneralPlugin>());
  });

  test('getPlatformVersion', () async {
    TeGeneralPlugin teGeneralPlugin = TeGeneralPlugin();
    MockTeGeneralPluginPlatform fakePlatform = MockTeGeneralPluginPlatform();
    TeGeneralPluginPlatform.instance = fakePlatform;

    expect(await teGeneralPlugin.getPlatformVersion(), '42');
  });
}
