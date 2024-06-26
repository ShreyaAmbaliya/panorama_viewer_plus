import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'panorama_viewer_plus_method_channel.dart';

abstract class PanoramaViewerPlusPlatform extends PlatformInterface {
  /// Constructs a PanoramaViewerPlusPlatform.
  PanoramaViewerPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static PanoramaViewerPlusPlatform _instance = MethodChannelPanoramaViewerPlus();

  /// The default instance of [PanoramaViewerPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelPanoramaViewerPlus].
  static PanoramaViewerPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PanoramaViewerPlusPlatform] when
  /// they register themselves.
  static set instance(PanoramaViewerPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
