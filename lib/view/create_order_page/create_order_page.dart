import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otie_app/widgets/card_item.dart';

import '../../model/cart_item_model.dart';
import '../../utils/constants.dart';
import '../order_review/order_review.dart';
import '../widgets/my_buttom.dart';
import '../widgets/my_simple_app_bar.dart';
import 'list_item_catogary.dart';

class CreateOrderPage extends StatefulWidget {
  const CreateOrderPage({Key? key}) : super(key: key);

  @override
  State<CreateOrderPage> createState() => _CreateOrderPageState();
}

class _CreateOrderPageState extends State<CreateOrderPage> {

  @override
  Widget build(BuildContext context) {
    double heightScreen =MediaQuery.of(context).size.height;
    double widthScreen =MediaQuery.of(context).size.width;
    int totalPrice=0;
    return Scaffold(
      backgroundColor: primaryBgColor,
      appBar: MySimpleAppBar(title: 'Creat Order'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children:  [
            const ItemCatogaryList(),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top:0,bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text("Total Price:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: xLargeTitleFontSize),),
                  Text("$totalPrice IDQ",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: xLargeTitleFontSize),),
                ],
              ),
            ),
            MyButtom(text: "Done", onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  OrderReviewPage(totalPrice: totalPrice,)),
              );
            }, color: primaryColor, height: heightScreen*0.07, width: widthScreen*0.8)
          ],
        ),
      ),
    );
  }
}

