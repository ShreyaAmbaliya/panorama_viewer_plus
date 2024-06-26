library panorama_viewer_plus;

import 'src/js_helper.dart';

import 'src/panorama_web_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/panorama_viewer.dart';

class CustomPanoramaViewer extends StatefulWidget {
  const CustomPanoramaViewer({super.key, required this.imagePath, this.isAssetImage, this.height, this.width});

  final bool? isAssetImage;
  final String imagePath;
  final double? height;
  final double? width;

  @override
  State<CustomPanoramaViewer> createState() => _CustomPanoramaViewerState();
}

class _CustomPanoramaViewerState extends State<CustomPanoramaViewer> {
  double? width;
  double? height;
  bool? isAssetImage;
  String? imagePath;

  @override
  void initState() {
    if (widget.isAssetImage == null) {
      isAssetImage = false;
    } else {
      isAssetImage = widget.isAssetImage;
    }
    imagePath = widget.imagePath;

    width = widget.width ?? 0.0;
    height = widget.height ?? 0.0;
    super.initState();
  }

  void onViewChanged(longitude, latitude, tilt) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Widget panorama;
    var deviceSize = MediaQuery.of(context).size;
    panorama = PanoramaViewer(
      animSpeed: .1,
      onViewChanged: onViewChanged,
      child: isAssetImage! ? Image.asset(imagePath!) : Image.network(imagePath!),
    );
    return (kIsWeb && (GetPlatform.isAndroid || GetPlatform.isIOS) && (context.isPhone || (context.isTablet)))
        ? PanoramaWebWidget(
      imagePath: isAssetImage! ? "${getImageUrl()}/$imagePath" : imagePath!,
      h: height! <= 0 ? deviceSize.height : height,
      w: width! <= 0 ? deviceSize.width : width,
    )
        : ClipRRect(
      child: Container(
        height: height! <= 0 ? deviceSize.height : height,
        width: width! <= 0 ? deviceSize.width : width,
        color: Colors.grey.shade400,
        child: panorama,
      ),
    );
  }
}
