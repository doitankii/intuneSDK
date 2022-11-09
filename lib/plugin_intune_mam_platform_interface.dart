import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_intune_mam_method_channel.dart';

abstract class PluginIntuneMamPlatform extends PlatformInterface {
  /// Constructs a PluginIntuneMamPlatform.
  PluginIntuneMamPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginIntuneMamPlatform _instance = MethodChannelPluginIntuneMam();

  /// The default instance of [PluginIntuneMamPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginIntuneMam].
  static PluginIntuneMamPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginIntuneMamPlatform] when
  /// they register themselves.
  static set instance(PluginIntuneMamPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
