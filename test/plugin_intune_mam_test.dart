import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_intune_mam/plugin_intune_mam.dart';
import 'package:plugin_intune_mam/plugin_intune_mam_platform_interface.dart';
import 'package:plugin_intune_mam/plugin_intune_mam_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginIntuneMamPlatform
    with MockPlatformInterfaceMixin
    implements PluginIntuneMamPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginIntuneMamPlatform initialPlatform = PluginIntuneMamPlatform.instance;

  test('$MethodChannelPluginIntuneMam is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginIntuneMam>());
  });

  test('getPlatformVersion', () async {
    PluginIntuneMam pluginIntuneMamPlugin = PluginIntuneMam();
    MockPluginIntuneMamPlatform fakePlatform = MockPluginIntuneMamPlatform();
    PluginIntuneMamPlatform.instance = fakePlatform;

    expect(await pluginIntuneMamPlugin.getPlatformVersion(), '42');
  });
}
