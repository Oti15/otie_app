import 'package:flutter/cupertino.dart';
import 'package:otie_app/widgets/card_item.dart';

import '../../model/cart_item_model.dart';
import '../../utils/total_price.dart';

class ItemCatogaryList extends StatelessWidget {
  var totalPrice = 0;

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
