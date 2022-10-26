import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class HomeCleningp2 extends StatefulWidget {
  const HomeCleningp2({Key? key}) : super(key: key);

  @override
  State<HomeCleningp2> createState() => _HomeCleningp2State();
}

class _HomeCleningp2State extends State<HomeCleningp2> {
  String choose = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        actions: [
          SizedBox(
            width: 55,
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 32,
                color: Colors.black,
              ),
              onPressed: () {
                //Navegate to page
              },
            );
          },
        ),
        title: Center(
          child: Text(
            "Part time cleaner booking",
            style: TextStyle(
                fontSize: xLargeTitleFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bold',
                color: Colors.black),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "How many cleaning \n"
              "Specialists do you need ?",
              style: TextStyle(
                  fontSize: xLargeTitleFontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bold',
                  color: Colors.black),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 0, top: 20),
              height: 80,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFDDD0C5)),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 0),
                        child: Text(
                          "1 Cleaner",
                          style: TextStyle(
                              fontSize: largeTitleFontSize,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 0),
                        child: Text(
                          "from   10,000 IQD",
                          style: TextStyle(
                              fontSize: largeTitleFontSize,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.grey),
                        ),
                      )
                    ],
                  ),


                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
