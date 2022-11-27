import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class Schedule extends StatelessWidget {
  const Schedule({
    Key? key,
    required this.date,
    required this.time,
    required this.look,
    required this.title,
    required this.x
  }) :
        super(key: key);
  final String date;
  final String time;
  final IconData look;
  final String title;
  final bool x;

  @override
  Widget build(BuildContext context) {
    return (x==true)?
      Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(0.3))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(look,size: 30,color: Colors.grey,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 10,bottom: 0),
                    child: Text(date,style:
                    TextStyle(fontSize: titleFontSize,color: Colors.black,),),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 10,bottom: 0),
                    child: Text(time,style:
                    TextStyle(fontSize: largeTitleFontSize,color: primaryColor,),),
                  ),

                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Expanded(
            child: Container(
              color: Colors.white,
              child: Text(title,style:
              TextStyle(fontSize: primaryFontSize,
                  color: Colors.grey.withOpacity(0.3),
                  fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ],
    )
    :Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(0.3))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(look,size: 30,color: Colors.grey,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 10,bottom: 0),
                    child: Text(date,style:
                    TextStyle(fontSize: titleFontSize,color: Colors.black,),),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 10,bottom: 0),
                    child: Text(time,style:
                    TextStyle(fontSize: largeTitleFontSize,color: primaryColor,),),
                  ),

                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Expanded(
            child: Container(
              color: Colors.white,
              child: Text(title,style:
              TextStyle(fontSize: primaryFontSize,
                  color: Colors.grey.withOpacity(0.3),
                  fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ],
    );
  }
}
