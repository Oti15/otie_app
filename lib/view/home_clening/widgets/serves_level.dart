import 'package:flutter/material.dart';
import 'package:otie_app/utils/constants.dart';
import 'package:otie_app/view/home_clening/view2.dart';
import 'package:otie_app/view/widgets/insert_photo.dart';

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
                  color: Color(0xFFDDD0C5)
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.only(left: 20,top: 15,bottom: 5),
                      child: Text(widget.level,
                        style: TextStyle(
                            fontSize: xLargeTitleFontSize,
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
                              EdgeInsets.only(left: 20,bottom: 5),
                              child: Text("Minimum Hrs",
                                style: TextStyle(
                                    fontSize: primaryFontSize,
                                    //fontWeight: FontWeight.bold,
                                    fontFamily: 'mid',
                                    color: Colors.grey
                                ),),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(left: 20,top: 0),
                              child: Text(widget.time,
                                style: TextStyle(
                                    fontSize: largeTitleFontSize,
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
                              EdgeInsets.only(left: 15,bottom: 5),
                              child: Text("Starts from",
                                style: TextStyle(
                                    fontSize: primaryFontSize,
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
                                    fontSize: largeTitleFontSize,
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
                  padding: EdgeInsets.only(right: 15),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeCleningp2()),
                        );
                      },
                      child: Text("Select",style:
                      TextStyle(fontSize: largeTitleFontSize,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'mid'),),
                    ),
                    height: 50,
                    width: 100,) ,),
              ],
            ),

          ),
          Center(
            child: Container(
              margin:
              EdgeInsets.only(left:0,top:124),
              height: 180,
              width: MediaQuery.of(context).size.width-40,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight:  Radius.circular(40)),
                border: Border.all(
                    color: Color(0xFFDDD0C5)
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(left: 15,top: 15,bottom: 5),
                    child: Text("Included tasks",
                      style: TextStyle(
                          fontSize: largeTitleFontSize,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'mid',
                          color: Colors.grey
                      ),),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: InsertPhoto(height: 60, width: 60, assetImage: 'assets/images/cleaning_sirves.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: InsertPhoto(height: 60, width: 60, assetImage: 'assets/images/Kitchen_sirves.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0,top: 10),
                        child: InsertPhoto(height: 60, width: 60, assetImage: 'assets/images/Bathroom_sirves.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                        EdgeInsets.only(left: 15,top: 0),
                        child: Text("General",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'mid',
                              color: Colors.grey
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 20,top: 0),
                        child: Text("Kitchen",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'mid',
                              color: Colors.grey
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 20,top: 0),
                        child: Text("Bathroom",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'mid',
                              color: Colors.grey
                          ),),
                      ),
                    ],
                  )


                ],
              ),

            ),
          ),
        ],
      )
    );
  }
}
