import 'package:flutter/material.dart';
import 'package:otie_app/utils/constants.dart';

import '../View1.dart';

class information1 extends StatefulWidget {
  const information1(
      {Key? key,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.title4,
      required this.info1,
      required this.info2,
      required this.info3,
      required this.color1,
      required this.color2,
      required this.color3,
      required this.color4,
      required this.x})
      : super(key: key);
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String info1;
  final String info2;
  final String info3;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final bool x;

  @override
  State<information1> createState() => _information1State();
}

class _information1State extends State<information1> {
  @override
  Widget build(BuildContext context) {
    return (widget.x == true)
        ? Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: MediaQuery.of(context).size.width - 50,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Color(0xFFF9F9F9),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.title1,
                            style: TextStyle(
                              fontSize: titleFontSize,
                              color: widget.color1,
                            ),
                          ),
                          Spacer(),
                          Text(
                            widget.info1,
                            style: TextStyle(
                                fontSize: primaryFontSize,
                                color: widget.color1,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            widget.title2,
                            style: TextStyle(
                              fontSize: titleFontSize,
                              color: widget.color2,
                            ),
                          ),
                          Spacer(),
                          Text(
                            widget.info2,
                            style: TextStyle(
                                fontSize: primaryFontSize,
                                color: widget.color2,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            widget.title3,
                            style: TextStyle(
                              fontSize: titleFontSize,
                              color: widget.color3,
                            ),
                          ),
                          Spacer(),
                          Text(
                            widget.info3,
                            style: TextStyle(
                                fontSize: primaryFontSize,
                                color: widget.color3,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                          Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Orders()),
                                    );
                                  },
                                  child: Text(
                                    widget.title4,
                                    style: TextStyle(
                                      fontSize: primaryFontSize,
                                      color: widget.color4,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Orders()),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 25,
                                  ),
                                  color: primaryColor,
                                )
                              ],
                            )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        : Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: MediaQuery.of(context).size.width - 50,
                  height: MediaQuery.of(context).size.height * 0.18,
                  decoration: BoxDecoration(
                    color: Color(0xFFF9F9F9),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.title1,
                            style: TextStyle(
                              fontSize: titleFontSize,
                              color: widget.color1,
                            ),
                          ),
                          Spacer(),
                          Text(
                            widget.info1,
                            style: TextStyle(
                                fontSize: titleFontSize,
                                color: widget.color1,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            widget.title2,
                            style: TextStyle(
                              fontSize: titleFontSize,
                              color: widget.color2,
                            ),
                          ),
                          Spacer(),
                          Text(
                            widget.info2,
                            style: TextStyle(
                                fontSize: titleFontSize,
                                color: widget.color2,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            widget.title3,
                            style: TextStyle(
                              fontSize: titleFontSize,
                              color: widget.color3,
                            ),
                          ),
                          Spacer(),
                          Text(
                            widget.info3,
                            style: TextStyle(
                                fontSize: titleFontSize,
                                color: widget.color3,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
