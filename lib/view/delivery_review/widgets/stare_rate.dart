import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class RatingsWidget extends StatefulWidget {
  @override
  _RatingsWidgetState createState() => _RatingsWidgetState();
}

class _RatingsWidgetState extends State<RatingsWidget> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> array = [];
    var filled = Color(0xFFFBF342);
    var empty = Colors.grey.shade300;
    for (var i = 1; i <= 5; i++) {
      array.add(IconButton(
        constraints: BoxConstraints(
          minWidth: 50
        ),
        enableFeedback: false,
        icon: Icon(Icons.star,size: iconSize1,),
        color: (_rating < i ? empty : filled),
        onPressed: () {
          setState(() {
            _rating = i;
            print("${_rating}");
          });
        },
      ));
    }
    return Row(
      children: array,
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}