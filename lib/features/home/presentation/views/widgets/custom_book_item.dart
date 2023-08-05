import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      // we put images in a container with a fixed height and width as not all images have the same size
      child: Container(
        decoration: BoxDecoration(
          // we removed const keyword that was before BoxDecoration when added borderRadius
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
