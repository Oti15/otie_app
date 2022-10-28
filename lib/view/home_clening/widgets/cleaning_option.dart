import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import 'check.dart';

class option extends StatefulWidget {
  const option({
    Key? key,
  }) : super(key: key);
  @override
  State<option> createState() => _optionState();
}

class _optionState extends State<option> {
   String choose = '';
   String value ='';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
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
                Padding(padding: EdgeInsets.only(right: 0,top: 10),
                  child: Center(

                  )
                )


              ]
          ),
        ),
      ),
    );
  }
}
