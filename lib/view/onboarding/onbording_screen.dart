import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otie_app/view/home/home_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'UnbordingContent.dart';
import 'widgets/buildDot.dart';
import 'widgets/buttom_onbording.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffffe),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 16),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 300,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      GradientText(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 32,

                        ),
                        gradientType: GradientType.linear,
                        gradientDirection: GradientDirection.ttb,
                        radius: .4,
                        colors: const [
                          Color(0xffB5428C),
                          Color(0xffFF7500),
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 64),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => BuildDot(currentIndex: currentIndex, index: index, context: context),
              ),
            ),
          ),
          ButtomOnBording(currentIndex: currentIndex, controller: _controller),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
        ],
      ),
    );
  }

}




