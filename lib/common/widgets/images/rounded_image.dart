import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/enum.dart';

class RoundedImage extends StatelessWidget {
  RoundedImage({
    super.key,
    required this.imageType,
    this.width = 56,
    this.height = 56,
    this.backgroundColor,
    this.margin,
    this.fit = BoxFit.contain,
    this.applyImageRadius = true,
    this.padding = 12,
    this.border,
    this.borderRadius = 12,
    this.image,
    this.bytes,
  });

  final double width, height, padding;
  final ImageType imageType;
  final Color? backgroundColor;
  final EdgeInsets? margin;
  final BoxFit? fit;
  final BoxBorder? border;
  final bool applyImageRadius;
  final double borderRadius;
  final String? image; // for asset / network
  final Uint8List? bytes; // for memory

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: border,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: _buildImageWidget(),
    );
  }

  Widget _buildImageWidget() {
    Widget imageWidget;
    switch (imageType) {
      case ImageType.network:
        imageWidget = _buildNetworkImage();
        break;
      case ImageType.asset:
        imageWidget = _buildAssetImage();
        break;
      case ImageType.memory:
        imageWidget = _buildMemoryImage();
        break;
    }
    return ClipRRect(
      borderRadius: applyImageRadius
          ? BorderRadius.circular(borderRadius)
          : BorderRadius.zero,
      child: imageWidget,
    );
  }

  Widget _buildNetworkImage() {
    if (image != null) {
      return CachedNetworkImage(
        fit: fit,
        imageUrl: image!,
        errorWidget: (context, url, error) => const Icon(Icons.error),
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            const SizedBox(),
      );
    } else {
      return Container();
    }
  }

  Widget _buildAssetImage() {
    if (image != null) {
      return Image.asset(image!, fit: fit);
    } else {
      return Container();
    }
  }

  Widget _buildMemoryImage() {
    if (bytes != null) {
      return Image.memory(bytes!, fit: fit);
    } else {
      return Container();
    }
  }
}
