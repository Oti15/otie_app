import 'package:flutter/material.dart';
import 'package:otie_app/data/data_home.dart';
import 'package:otie_app/utils/constants.dart';

import 'widgets/serves_level.dart';

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
                //Navegate to page
              },
            );
          },
        ),
        title:
        Center(
          child: Text("Part time cleaner booking",
            style: TextStyle(
                fontSize: xLargeTitleFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bold',
                color: Colors.black
            ),),
        ),
      ),
      body: ListView(
        shrinkWrap: false,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding:
                EdgeInsets.only(left: 20, top: 10),
                child: Text("Level  of Service",
                  style: TextStyle(
                      fontSize: xLargeTitleFontSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Bold',
                      color: Colors.black
                  ),),
              ),
              Container(
                height: MediaQuery.of(context).size.height-160,
                child: ListView.builder(
                    shrinkWrap: false,
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: levelName.length,
                    itemBuilder: (BuildContext context, int index){
                      return
                          ServiceLevel(
                            level: levelName[index],
                            time: minTime[index],
                            price: price[index],
                      );
                    }
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
