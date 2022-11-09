import 'package:flutter/services.dart';

import 'plugin_intune_mam_platform_interface.dart';

class PluginIntuneMam {
  static const MethodChannel _channel =
      const MethodChannel('plugin_intune_mam');

  Future<String?> getPlatformVersion() {
    return PluginIntuneMamPlatform.instance.getPlatformVersion();
  }
}
