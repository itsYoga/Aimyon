import 'package:flutter/material.dart';

class PhotoDetailPage extends StatelessWidget {
  final String photoPath;
  final String heroTag;

  const PhotoDetailPage({
    Key? key,
    required this.photoPath,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: Hero(
            tag: heroTag,
            child: Image.asset(
              photoPath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}