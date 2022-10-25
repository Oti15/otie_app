import 'package:flutter/cupertino.dart';
import 'package:otie_app/widgets/card_item.dart';

import '../../model/cart_item_model.dart';

class ItemCatogaryList extends StatelessWidget {
  const ItemCatogaryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.7,
      child: ListView.builder(
          physics:ScrollPhysics(),
          itemCount: CardItemList.length,
          itemBuilder: (context, index) => CardItem(
            icon: CardItemList[index].icon,
            title: CardItemList[index].name,
            price: CardItemList[index].price,
          )),
    );
  }
}
