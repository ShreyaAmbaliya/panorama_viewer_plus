# Panorama Viewer Plus

A 360-degree panorama viewer.
Supported platforms: Android, iOS, Tablet, Web Support(Mobile/Desktop).

This package is an updated porting of the plugin https://github.com/dariocavada/panorama_viewer


## Screenshot

![screenshot](https://github.com/ShreyaAmbaliya/panorama_viewer_plus/raw/main/resource/screenshot.gif)

## Getting Started

Add panorama as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  panorama_viewer_plus: ^0.1.0
```

Import and add the Panorama Viewer widget to your project.

```dart
import 'package:panorama_viewer_plus/panorama_viewer_plus.dart';
... ...

@override
Widget build(BuildContext context) {
  var deviceSize = MediaQuery.of(context).size;
  return Scaffold(
    appBar: AppBar(title: const Text("Custom Panorama Viewer")),
    body: Center(
      child: CustomPanoramaViewer(
        imagePath: 'https://raw.githubusercontent.com/ShreyaAmbaliya/panorama_viewer_plus/main/example/assets/test.jpg',
        width: deviceSize.width,
        height: 220,
      ),
    ),
  );
}
```

### Set `isAssetImage` to `true` to view an asset image

```dart
import 'package:panorama_viewer_plus/panorama_viewer_plus.dart';
... ...

@override
Widget build(BuildContext context) {
  var deviceSize = MediaQuery.of(context).size;
  return Scaffold(
    appBar: AppBar(title: const Text("Custom Panorama Viewer")),
    body: Center(
      child: CustomPanoramaViewer(
        imagePath:'assets/test.jpg',
        isAssetImage:true,
        width: deviceSize.width,
        height: 220,
      ),
    ),
  );
}
```

## Support :heart:

Star project on [github.com](https://github.com/ShreyaAmbaliya/panorama_viewer_plus).

Like on [pub.dev](https://pub.dev/packages/panorama_viewer_plus).

