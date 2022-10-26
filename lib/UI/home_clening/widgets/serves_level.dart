import 'package:flutter/material.dart';

class ServiceLevel extends StatefulWidget {
  const ServiceLevel({
    Key? key,
    required this.level,
    required this.time,
    required this.price
  }) :
        super(key: key);
    final String level;
    final  String time;
    final String price;

  @override
  State<ServiceLevel> createState() => _ServiceLevelState();
}

class _ServiceLevelState extends State<ServiceLevel> {
  @override
  Widget build(BuildContext context) {
    return Container(

        child: Stack(
        children: [
          Container(
            margin:
            EdgeInsets.only(left:20,top:15 ),
            height: 110,
            width: MediaQuery.of(context).size.width-40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight:  Radius.circular(40)),
              border: Border.all(
                  color: Color(0xFFF05A25)
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.only(left: 15,top: 15,bottom: 5),
                      child: Text(widget.level,
                        style: TextStyle(
                            fontSize: 25,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'mid',
                            color: Colors.black
                        ),),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(left: 15,top: 0),
                              child: Text("Minimum Hrs",
                                style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    fontFamily: 'mid',
                                    color: Colors.grey
                                ),),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(left: 15,top: 0),
                              child: Text(widget.time,
                                style: TextStyle(
                                    fontSize: 25,
                                    //fontWeight: FontWeight.bold,
                                    fontFamily: 'mid',
                                    color: Colors.black
                                ),),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(left: 15,top: 0),
                              child: Text("Starts from",
                                style: TextStyle(
                                    fontSize: 18,
                                    //fontWeight: FontWeight.bold,
                                    fontFamily: 'mid',
                                    color: Colors.grey
                                ),),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(left: 15,top: 0),
                              child: Text(widget.price,
                                style: TextStyle(
                                    fontSize: 24,
                                    //fontWeight: FontWeight.bold,
                                    fontFamily: 'mid',
                                    color: Colors.black
                                ),),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:
                        Color(0xFFF05A25),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),),
                      onPressed: () {},
                      child: Text("Select",style:
                      TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
                    ),
                    height: 50,
                    width: 100,) ,),
                Spacer()
              ],
            ),

          ),
          Container(
            margin:
            EdgeInsets.only(left:20,top:15 ),
            height: 250,
            width: MediaQuery.of(context).size.width-40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                  color: Color(0xFFF05A25)
              ),
            ),

          ),
        ],
      )
    );
  }
}
