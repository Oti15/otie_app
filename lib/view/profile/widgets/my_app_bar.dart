
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,),
          child: Image.asset(
            "assets/icons/settings.png",
            height: 24,
            color: Colors.grey,
          ),
        ),
        Icon(
          Icons.notifications_none_outlined,
          size: 24,
          color: Colors.grey,
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "توصيل الى",
                    style: TextStyle(color: Colors.black,fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.keyboard_arrow_down_sharp),
                      Text(
                        "المنزل",
                        style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey.withOpacity(0.3),
                  )
                ],
              ),
            ))
      ],
    );
  }
}