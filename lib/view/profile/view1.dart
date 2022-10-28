import 'package:flutter/material.dart';
import 'package:otie_app/data/data_profile.dart';

import '../widgets/my_simple_app_bar.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController location = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MySimpleAppBar(title: 'Profile Details'),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/profile_img.png"))
                  ),
                ),
              ),
              Center(
                child: Text(newName,
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.black
                  ),),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text("Account Credit:",
                  style: TextStyle(
                      fontSize: 18,
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'mid',
                      color: Colors.black
                  ),),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width - 80,
                child: TextField(
                  controller: name,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.15),
                      hintText: " Enter your name",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width - 80,
                child: TextField(
                  controller: phone,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.15),
                      hintText: " Phone number",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width - 80,
                child: TextField(
                  controller: location,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.15),
                      hintText: " Province",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),

                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:
                        Color(0xFFF05A25),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),),
                      onPressed: () {
                        newName=name.text;
                        newPhone=phone.text;
                        newLocation=location.text;

                        setState(() {
                          print("${name.text}");
                          print("${phone.text}");
                          print("${location.text}");

                        });

                      },
                      child: Text("SAVE NOW",style:
                      TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
                    ),
                    height: 55,
                    width: MediaQuery.of(context).size.width-80,) ,),
              ),

            ],
          ),
        ],
      )
    );
  }
}
