import 'package:flutter/material.dart';
import 'package:otie_app/main.dart';
import 'package:otie_app/view/widgets/my_simple_app_bar.dart';

import '../../utils/constants.dart';
import '../widgets/my_buttom.dart';
import 'widgets/stare_rate.dart';

class rate extends StatefulWidget {
  const rate({Key? key}) : super(key: key);

  @override
  State<rate> createState() => _rateState();
}

class _rateState extends State<rate> {
  TextEditingController note = TextEditingController();

  int _rating = 0;
  List<Widget> array = [];
  var filled = Color(0xFFFBF342);
  var empty = Colors.grey.shade300;

  String choose ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MySimpleAppBar(title: 'Delivery Review'),
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: false,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70,),
              Center(
                child: Padding(
                  padding:
                  EdgeInsets.only(left: 0, top: 0),
                  child: Text("Please rate the quality of service"
                    "\nfor the order",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: largeTitleFontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bold',
                        color: Colors.black
                    ),),
                ),
              ),
              SizedBox(height: 30,),
              RatingsWidget(),
              SizedBox(height: 30,),
              Center(
                child: Padding(
                  padding:
                  EdgeInsets.only(left: 0, top: 0),
                  child: Text("Your comments and suggestions help us"
                      "\nimprove the service quality better!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: smallFontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bold',
                        color: Colors.grey
                    ),),
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Center(
                  child:  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    height: 140,
                    width: MediaQuery.of(context).size.width - 80,
                    decoration: BoxDecoration(
                      color: Color(0x33DDD0C5),
                        borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      controller: note,
                      style: TextStyle(
                          fontSize: titleFontSize,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Bold',
                          color: Colors.black
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter your note here',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0,style: BorderStyle.none)
                      ),),
                      autofocus: false,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      minLines: 5,
                    ),
                  ),

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: MyButtom(
                  text: 'Submit',
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.8,
                  color: primaryColor,
                  onPressed: () {
                    setState(() {
                      print("${note}");
                    });
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(builder: (context) => goto next page()),
                    // );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
