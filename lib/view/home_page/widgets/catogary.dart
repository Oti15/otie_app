import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otie_app/utils/constants.dart';

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
          child: GestureDetector(
            child: Container(
              margin:
              EdgeInsets.only(left:0,top:10 ),
              height: 80,
              width: (x==true)?MediaQuery.of(context).size.width-40:MediaQuery.of(context).size.width/2-25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: primaryColor
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
                    const EdgeInsets.only(left: 10,),
                    child: Text(name,
                      style: const TextStyle(
                          fontSize: titleFontSize,
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