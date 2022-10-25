import 'package:flutter/material.dart';

import 'SignIn.dart';

var username = TextEditingController();
var location = TextEditingController();
var password = TextEditingController();
var phone_num = TextEditingController();

var showcode = Container();

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "OTIE أوتي",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 75),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Open account with Otie",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    height: 40.0,
                    width: 280,
                    color: Colors.grey.withOpacity(0.5),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: 280,
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: TextField(
                              controller: username,
                              textAlign: TextAlign.left,
                              autofocus: false,
                              cursorColor: Colors.orange,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontFamily: 'bukra'),
                              decoration: InputDecoration(
                                hintText: 'Enter your Full Name',
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.account_circle,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                                prefixIconColor: Colors.orange,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    height: 40.0,
                    width: 280,
                    color: Colors.grey.withOpacity(0.5),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: 280,
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: TextField(
                              controller: location,
                              textAlign: TextAlign.left,
                              autofocus: false,
                              cursorColor: Colors.orange,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontFamily: 'bukra'),
                              decoration: InputDecoration(
                                hintText: 'Enter your Province',
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.location_city_outlined,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                                prefixIconColor: Colors.orange,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    height: 40.0,
                    width: 280,
                    color: Colors.grey.withOpacity(0.5),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: 280,
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: TextField(
                              controller: phone_num,
                              textAlign: TextAlign.left,
                              autofocus: false,
                              cursorColor: Colors.orange,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontFamily: 'bukra'),
                              decoration: InputDecoration(
                                hintText: 'Enter your phone number',
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.phone,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                                prefixIconColor: Colors.orange,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    height: 40.0,
                    width: 280,
                    color: Colors.grey.withOpacity(0.5),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: 280,
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: TextField(
                              controller: password,
                              textAlign: TextAlign.left,
                              autofocus: false,
                              cursorColor: Colors.orange,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontFamily: 'bukra'),
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.key,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                                prefixIconColor: Colors.orange,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(40)),
                    margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have account ? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => signin()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
