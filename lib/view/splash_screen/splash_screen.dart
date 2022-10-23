import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import '../OnBoarding/onbording_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Onbording()),
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffffe),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
             Image.asset(
                "assets/images/oti_logo.png",
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.7,
              ),
            const SizedBox(height: 24,),
            const SizedBox(
              height: 24,
              width: 100,
              child: LoadingIndicator(
                indicatorType: Indicator.ballPulse,
                colors: [Color(0xffE2E0DF)],
                strokeWidth: 2,
                backgroundColor: Colors.transparent,
                pathBackgroundColor: Colors.black,
              ),
            ),
            Spacer(),
            const Text(
              "@Copyright©Otie",
              style: TextStyle(color: Color(0xff808080), fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
