import 'package:flutter_test/flutter_test.dart';
import 'package:panorama_viewer_plus/panorama_viewer_plus.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPanoramaViewerPlusPlatform
    with MockPlatformInterfaceMixin{

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {

}
