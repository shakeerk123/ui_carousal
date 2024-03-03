import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageViewer{
  static show({
    required BuildContext context,
    BoxFit? fit,
    required String url,
    double? radius
  }){
    return CachedNetworkImage(imageUrl: url,fit: fit ?? BoxFit.cover,
    imageBuilder: (context, imageProvider) {
     return Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(radius ?? 8 ),
          image: DecorationImage(image: imageProvider,fit: fit ?? BoxFit.cover)
          
        ),
        
      );
      
    },
    placeholder: (context, url) => Container(),
    errorWidget: (context, url, error) =>const Icon(Icons.error_outline_outlined),
    
    );
  }
}