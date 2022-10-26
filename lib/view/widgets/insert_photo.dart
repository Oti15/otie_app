import 'package:flutter/material.dart';

class InsertPhoto extends StatelessWidget {
  const InsertPhoto({
    Key? key,
    required this.height,
    required this.width,
    required this.assetImage
  }) : super(key: key);

  final double height;
  final double width;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(assetImage))
          ),
        ),
      ),
    );
  }
}
