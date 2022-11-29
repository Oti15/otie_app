import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({Key? key,
    required this.title1,
    required this.title2,

  }) : super(key: key,);
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width - 80,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.15),
            borderRadius: BorderRadius.circular(25)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title1,
              style: TextStyle(
                  fontSize: smallFontSize,
                  fontFamily: 'Roboto',
                  color: Colors.grey
              ),),
            SizedBox(height: 5,),
            Text(title2,
              style: TextStyle(
                  fontSize: primaryFontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.black
              ),),
          ],
        ),
      ),
    );
  }
}
