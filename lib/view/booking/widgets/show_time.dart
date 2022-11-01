import 'package:flutter/material.dart';

import '../../../data/booking_data.dart';
import '../../../utils/constants.dart';

class ShowTime extends StatelessWidget {
  final String time;
  const ShowTime({
    required this.time
});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         if (time=="morning")
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width-40,
              height: 20,
              child: (ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: morning.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        morning[index],
                        style: TextStyle(
                            fontSize: primaryFontSize,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Bold',
                            color: Colors.black),
                      ),
                    );
                  })),
            ),
          )
          else if (time=="afternoon")
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width-40,
              height: 20,
              child: (ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: afternoon.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        afternoon[index],
                        style: TextStyle(
                            fontSize: primaryFontSize,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Bold',
                            color: Colors.black),
                      ),
                    );
                  })),
            ),
          )
         else if (time=="evening")
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width-40,
              height: 20,
              child: (ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: evening.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        evening[index],
                        style: TextStyle(
                            fontSize: primaryFontSize,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Bold',
                            color: Colors.black),
                      ),
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }
}
