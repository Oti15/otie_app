import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../view1.dart';

class Option extends StatelessWidget {
  const Option({Key? key,
    required this.x
  }) : super(key: key);
  final bool x;

  @override
  Widget build(BuildContext context) {
    return
      (x==true)?
      Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: MediaQuery.of(context).size.height * 0.14,
        width: MediaQuery.of(context).size.width - 80,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.15),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  splashColor: Colors.grey.withOpacity(0.00),
                  highlightColor: Colors.grey.withOpacity(0.00),
                  style: ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.grey.withOpacity(0.00))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );
                  },
                  icon: Icon(
                    Icons.lock_outline,
                    color: Colors.grey,
                    size: 35,
                  ),
                ),
                TextButton(
                  style: ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.grey.withOpacity(0.00))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );
                  },
                  child: Text("Change password",
                      style: TextStyle(
                          fontSize: primaryFontSize,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.black)),
                ),
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width - 60,
              color: Colors.grey.withOpacity(0.3),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  splashColor: Colors.grey.withOpacity(0.00),
                  highlightColor: Colors.grey.withOpacity(0.00),
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_outline,
                    color: Colors.grey,
                    size: 35,
                  ),
                ),

                TextButton(
                  style: ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.grey.withOpacity(0.00))),
                  onPressed: () {},
                  child: Text("Delete account",
                      style: TextStyle(
                          fontSize: primaryFontSize,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    )
    :Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width - 80,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.15),
              borderRadius: BorderRadius.circular(25)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                splashColor: Colors.grey.withOpacity(0.00),
                highlightColor: Colors.grey.withOpacity(0.00),
                style: ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.grey.withOpacity(0.00))),
                onPressed: () {},
                icon: Icon(Icons.logout,color: Colors.red,size: 35,),
              ),
              TextButton(
                style: ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.grey.withOpacity(0.00))),
                onPressed: () {},
                child: Text("Sign out",
                    style: TextStyle(
                        fontSize: primaryFontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.red)),
              ),
            ],
          ),
        ),
      );
  }
}
