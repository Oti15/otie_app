import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class catogary extends StatelessWidget {
  const catogary({
    Key? key,
    required this.x,
    required this.name,
    required this.image

  }) : super(key: key);
  final bool x;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(

     child:Padding(
          padding: EdgeInsets.all(0.0),
          child: (x==true)?
          GestureDetector(
            child: Container(
              margin:
              EdgeInsets.only(left:0,top:10 ),
              height: 80,
              width: MediaQuery.of(context).size.width-40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Color(0xFFF05A25)
                ),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image:
                        AssetImage(image),
                            fit: BoxFit.cover)
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 10,),
                    child: Text(name,
                      style: TextStyle(
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.black
                      ),),
                  ),
                ],
              ),

            ),
            onTap: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context)=>
              //     //put the page here
              //     ));
            },
          )
              :
          GestureDetector(
            child: Container(
              margin:
              EdgeInsets.only(left:0,top:10 ),
              height: 80,
              width: MediaQuery.of(context).size.width/2-25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Color(0xFFF05A25)
                ),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image:
                        AssetImage(image),
                            fit: BoxFit.cover)
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 10,),
                    child: Text(name,
                      style: TextStyle(
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.black
                      ),),
                  ),
                ],
              ),

            ),
            onTap: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context)=>
              //     //put the page here
              //     ));
            },
          )

      )

    );
  }
}
