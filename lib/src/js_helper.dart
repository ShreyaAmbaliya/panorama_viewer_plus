// Conditional imports based on the platform
export 'js_stub.dart' if (dart.library.js) 'js_web.dart';
