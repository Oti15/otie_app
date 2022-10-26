import 'package:flutter/cupertino.dart';

import '../../../utils/constants.dart';

class SingleItemPageView extends StatelessWidget {
  const SingleItemPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width - 40,
        height: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: orangeColor,
        ),
      ),
    );
  }
}