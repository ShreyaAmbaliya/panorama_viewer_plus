# Panorama Viewer Plus

A 360-degree panorama viewer.

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
        imagePath:
        'https://firebasestorage.googleapis.com/v0/b/travelbrains-flutter-mtg.appspot.com/o/media%2FRvoGlxBvpUY1sg6vi5KA5guDzVn1%2F1689264672_1689264672013_1689264672013000_gb_cem_stop5-2.jpg?alt=media&token=cc50d7b5-c241-47c9-b4ac-55b3608eecf5',
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

