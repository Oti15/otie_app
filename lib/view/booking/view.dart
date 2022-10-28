import 'package:flutter/material.dart';
import 'package:calender_picker/calender_picker.dart';
import 'package:otie_app/utils/constants.dart';
import 'package:otie_app/view/widgets/my_buttom.dart';
import 'package:otie_app/view/widgets/my_simple_app_bar.dart';

import 'widgets/Pickup_delivery.dart';
import 'widgets/expres_ delivery.dart';


class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  String choose ='Morning';
  String selectedValue='Pickup';
  String Delivery ='Regular Delivery';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MySimpleAppBar(title: 'Booking'),
      backgroundColor: primaryBgColor,
      body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                EdgeInsets.only(left: 20, top: 0),
                child: Text("Select Date & Time",
                  style: TextStyle(
                      fontSize: xLargeTitleFontSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Bold',
                      color: Colors.black
                  ),),
              ),
              SizedBox(height: 15,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    RadioList(
                      leading: 'Pickup',
                      value: 'Pickup',
                      groupValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = "$value";
                          print("${value}");
                        });
                      }, height: 105, radius: 15, width: 175, border: 1,),
                    SizedBox(width: 20,),
                    RadioList(
                      leading: 'Delivery',
                      value: 'Delivery',
                      groupValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = "$value";
                          print("${value}");
                        });
                      },height: 105, radius: 15, width: 175, border: 1,),
                  ],
                ),
              SizedBox(height: 150,),
              Padding(
                padding:
                EdgeInsets.only(left: 20, top: 20),
                child: Text("Pickup Time",
                  style: TextStyle(
                      fontSize: primaryFontSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Bold',
                      color: Colors.black
                  ),),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: RadioList(
                        leading: 'Morning',
                        value: 'Morning',
                        groupValue: choose,
                        onChanged: (value) {
                          setState(() {
                            choose = "$value";
                            print("${value}");
                          });
                        },height: 70, radius: 15, width: 100, border: 0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: RadioList(
                        leading: 'Afternoon',
                        value: 'Afternoon',
                        groupValue: choose,
                        onChanged: (value) {
                          setState(() {
                            choose = "$value";
                            print("${value}");
                          });
                        },height: 70, radius: 15, width: 100, border: 0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: RadioList(
                        leading: 'Evening',
                        value: 'Evening',
                        groupValue: choose,
                        onChanged: (value) {
                          setState(() {
                            choose = "$value";
                            print("${value}");
                          });
                        },height: 70, radius: 15, width: 100, border: 0,),
                  ),
                ],
              ),
              if(choose=='Morning')(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("8:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("9:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("10:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("11:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("12:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                    ],
                  )
             )else if(choose=='Afternoon')(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("1:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("2:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("3:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("4:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("5:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                    ],
                  )
              )else if(choose=='Evening')(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("6:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("7:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("8:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("9:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 0, top: 20),
                        child: Text("10:00",
                          style: TextStyle(
                              fontSize: primaryFontSize,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black
                          ),),
                      ),
                    ],
                  )
              ),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  delivery(
                    value: 'Regular Delivery',
                    leading: 'Regular Delivery',
                    groupValue: Delivery,
                    onChanged: (value) {
                    setState(() {
                      Delivery = "$value";
                      print("${value}");
                    });
                  },),

                  delivery(
                    value: 'Express Delivery',
                    leading: 'Express Delivery',
                    groupValue: Delivery,
                    onChanged: (value) {
                      setState(() {
                        Delivery = "$value";
                        print("${value}");
                      });
                    },)
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MyButtom(text: 'Next',
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => ()),
                        // );
                      },
                      color: primaryColor,
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              ),
              SizedBox(height: 30,)
            ]
          ),
    );
  }
}
