import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_intune_mam/plugin_intune_mam_method_channel.dart';

void main() {
  MethodChannelPluginIntuneMam platform = MethodChannelPluginIntuneMam();
  const MethodChannel channel = MethodChannel('plugin_intune_mam');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
