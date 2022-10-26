import 'package:flutter/material.dart';

class HomeCleningp1 extends StatefulWidget {
  const HomeCleningp1({Key? key}) : super(key: key);

  @override
  State<HomeCleningp1> createState() => _HomeCleningp1State();
}

class _HomeCleningp1State extends State<HomeCleningp1> {
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
        leading:
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 32,
                color: Colors.black,
              ),
              onPressed: () {
                //Navegate to profile page
              },
            );
          },
        ),
        title:
        Center(
          child: Text("Part time cleaner booking",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bold',
                color: Colors.black
            ),),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
            EdgeInsets.only(left: 20, top: 10),
            child: Text("Level  of Service",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bold',
                  color: Colors.black
              ),),
          ),
          Stack(
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
                      color: Color(0xFFF05A25)
                  ),
                ),
                child: Padding(
                  padding:
                  EdgeInsets.only(left: 15,top: 18),
                  child: Text("Bronze",
                    style: TextStyle(
                        fontSize: 28,
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'mid',
                        color: Colors.black
                    ),),
                ),

              ),
              Container(
                margin:
                EdgeInsets.only(left:20,top:15 ),
                height: 250,
                width: MediaQuery.of(context).size.width-40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      color: Color(0xFFF05A25)
                  ),
                ),

              ),
            ],
          )
        ],
      ),
    );
  }
}
