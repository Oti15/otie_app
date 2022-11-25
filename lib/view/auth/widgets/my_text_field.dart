import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sign_up.dart';

class MyTestField extends StatelessWidget {
  const MyTestField({
    Key? key,
    required this.height,
    required this.width,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.textInputType
  }) : super(key: key);

  final double height;
  final double width;
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: Container(
            height: height,
            width: width,
            color: Colors.grey.withOpacity(0.16),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    width: 280,
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: TextFormField(
                      keyboardType: textInputType,
                      controller: controller,
                      textAlign: TextAlign.left,
                      autofocus: false,
                      cursorColor: Colors.orange,
                      style:  const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontFamily: 'bukra'),
                      decoration:  InputDecoration(
                        hintText: hintText,
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            icon,
                            color: Colors.black,
                            size: 32,
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
        ));
  }
}