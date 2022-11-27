import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:otie_app/widgets/card_item.dart';
import '../../model/cart_item_model.dart';
import 'package:http/http.dart' as http;
class ItemCatogaryList extends StatefulWidget {
  @override
  State<ItemCatogaryList> createState() => _ItemCatogaryListState();
}

class _ItemCatogaryListState extends State<ItemCatogaryList> {
  var totalPrice = 0;



  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: ListView.builder(
          physics: ScrollPhysics(),
          itemCount: CardItemList.length,
          itemBuilder: (context, index) => CardItem(
                icon: CardItemList[index].icon,
                title: CardItemList[index].name,
                price: CardItemList[index].price,
              )),
    );
  }


}
