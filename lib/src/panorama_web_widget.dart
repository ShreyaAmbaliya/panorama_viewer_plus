
import 'panorama_js.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

class PanoramaWebWidget extends StatefulWidget {
  const PanoramaWebWidget({super.key, required this.imagePath, this.w, this.h});

  final String imagePath;
  final double? h;
  final double? w;

  @override
  State<PanoramaWebWidget> createState() => _PanoramaWebWidgetState();
}

class _PanoramaWebWidgetState extends State<PanoramaWebWidget> {
  late PlatformWebViewController _controller;

  var jsData='''''';

  var isloading = true;

  @override
  void initState() {
    isloading = true;
    jsData = getPanoramaJs(kImageHeight: widget.h, kImageUrl: widget.imagePath, kImageWidth: widget.w);
    setState(() {});
    _controller = PlatformWebViewController(
      const PlatformWebViewControllerCreationParams(),
    )..loadHtmlString(jsData).then(
        (value) {
          setState(() {
            isloading = false;
          });
        },
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.w,
      height: widget.h,
      color: Colors.grey.shade400,
      child: isloading
          ? const CircularProgressIndicator()
          : PlatformWebViewWidget(
              PlatformWebViewWidgetCreationParams(controller: _controller),
            ).build(context),
    );
  }
}
