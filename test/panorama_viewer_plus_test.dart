import 'package:flutter_test/flutter_test.dart';
import 'package:panorama_viewer_plus/panorama_viewer_plus.dart';
import 'package:panorama_viewer_plus/panorama_viewer_plus_platform_interface.dart';
import 'package:panorama_viewer_plus/panorama_viewer_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPanoramaViewerPlusPlatform
    with MockPlatformInterfaceMixin
    implements PanoramaViewerPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PanoramaViewerPlusPlatform initialPlatform = PanoramaViewerPlusPlatform.instance;

  test('$MethodChannelPanoramaViewerPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPanoramaViewerPlus>());
  });

  test('getPlatformVersion', () async {
    // PanoramaViewerPlus panoramaViewerPlusPlugin = PanoramaViewerPlus();
    MockPanoramaViewerPlusPlatform fakePlatform = MockPanoramaViewerPlusPlatform();
    PanoramaViewerPlusPlatform.instance = fakePlatform;

    // expect(await panoramaViewerPlusPlugin.getPlatformVersion(), '42');
  });
}
