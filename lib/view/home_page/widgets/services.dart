import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../utils/constants.dart';

class services extends StatelessWidget {
  const services({
    Key? key,
    required this.name

  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
child: Stack(
        children: [
          Container(
            margin:
            const EdgeInsets.only(left:20,top:15 ),
            height: 70,
            width: MediaQuery.of(context).size.width/1.5,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight:  Radius.circular(30)),
              border: Border.all(
                  color: grayColor2
              ),
            ),
            child: Padding(
              padding:
              EdgeInsets.only(left: 15,top: 18),
              child: Text(name,
                style: const TextStyle(
                    fontSize: 28,
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'mid',
                    color: Colors.black
                ),),
            ),

          ),
          Container(
            margin:
            EdgeInsets.only(left:20,top:15 ),
            height: 190,
            width: MediaQuery.of(context).size.width/1.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  color: grayColor2
              ),
            ),

          ),
        ],
      )
    );
  }
}
