import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'panorama_viewer_plus_platform_interface.dart';

/// An implementation of [PanoramaViewerPlusPlatform] that uses method channels.
class MethodChannelPanoramaViewerPlus extends PanoramaViewerPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('panorama_viewer_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
