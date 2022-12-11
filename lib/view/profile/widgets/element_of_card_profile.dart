import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElelmentOfCardProfile extends StatelessWidget {
  const ElelmentOfCardProfile({
    Key? key,
    required this.icon,
    required this.tex1,
    required this.tex2,
  }) : super(key: key);

  final IconData icon;
  final String tex1;
  final String tex2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:  [
          Text(
            tex2,
            style: const TextStyle(
              color: Colors.teal,
              fontSize: 16,
            ),
          ),
          Spacer(),
          Text(
            tex1 ,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(width: 4,),
          Icon(icon,color: Colors.grey,)
        ],
      ),
    );
  }
}