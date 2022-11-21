import 'package:flutter/material.dart';
import 'package:otie_app/view/home_clening/widgets/check3.dart';

import '../../utils/constants.dart';
import '../widgets/my_buttom.dart';
import '../widgets/my_simple_app_bar.dart';

class HomeCleningp4 extends StatefulWidget {
  const HomeCleningp4({Key? key}) : super(key: key);

  @override
  State<HomeCleningp4> createState() => _HomeCleningp4State();
}

class _HomeCleningp4State extends State<HomeCleningp4> {
  TextEditingController Comment = TextEditingController();

  String choose = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MySimpleAppBar(title: 'Part time cleaner booking'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Do we need to bringcleaning\n"
              "products?",
              style: TextStyle(
                  fontSize: xLargeTitleFontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bold',
                  color: Colors.black),
            ),
          ),
          check3(
              value: '25,000 IQD',
              groupValue: choose,
              onChanged: (value) {
                setState(() {
                  choose = "$value";
                  print("${value}");
                });
              },
              select: 'Yes (25,000 IQD)'),
          check3(
              value: '0 IQD',
              groupValue: choose,
              onChanged: (value) {
                setState(() {
                  choose = "$value";
                  print("${value}");
                });
              },
              select: 'No'),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Any notes to leave for the\n"
              "specialist?",
              style: TextStyle(
                  fontSize: xLargeTitleFontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bold',
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Center(
              child:  Container(
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey[300]!)
                    ),
                  child: TextField(
                    controller: Comment,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 0,style: BorderStyle.none)
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: " Leave notes ...",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),

            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 7,
                    decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Container(
                    width: 150,
                    height: 7,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(3.5)),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: MyButtom(
              text: 'Next',
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.8,
              color: primaryColor,
              onPressed: () {
                // Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => goto next page()),
                // );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.05,
          ),
        ],
      ),
    );
  }
}
