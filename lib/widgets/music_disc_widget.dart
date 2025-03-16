import 'package:flutter/material.dart';

class MusicDiscWidget extends StatefulWidget {
  final String imagePath;
  const MusicDiscWidget({Key? key, required this.imagePath}) : super(key: key);

  @override
  _MusicDiscWidgetState createState() => _MusicDiscWidgetState();
}

class _MusicDiscWidgetState extends State<MusicDiscWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _rotationController;
  
  @override
  void initState() {
    super.initState();
    // A continuous rotation animation.
    _rotationController = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this,
    )..repeat(); // repeat forever
  }
  
  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _rotationController,
      builder: (context, child) {
        return Transform.rotate(
          angle: _rotationController.value * 6.28319, // 2π radians
          child: child,
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 2),
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}