import 'package:flutter/material.dart';

class slidImageWidget extends StatelessWidget {
  const slidImageWidget({
    super.key,
    required this.slidImage,
  });

  final List<String> slidImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Set the height of the image slider
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: slidImage.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                slidImage[index],
                fit: BoxFit.cover,
                width: 300, // Set the width of each image
              ),
            ),
          );
        },
      ),
    );
  }
}
