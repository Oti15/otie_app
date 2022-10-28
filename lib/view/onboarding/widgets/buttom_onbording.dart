import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home/home_screen.dart';
import '../UnbordingContent.dart';

class ButtomOnBording extends StatelessWidget {
  const ButtomOnBording({
    Key? key,
    required this.currentIndex,
    required PageController controller,
  }) : _controller = controller, super(key: key);

  final int currentIndex;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 50,
      child: ElevatedButton(
        child: Text(
            currentIndex == contents.length - 1 ? "Continue" : "Next"),
        style: ElevatedButton.styleFrom(
            primary: Color(0XFFF05A25),
            shape: StadiumBorder()
        ),
        onPressed: () {
          if (currentIndex == contents.length - 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            );
          }
          _controller.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.bounceIn,
          );
        },
      ),
    );
  }
}
