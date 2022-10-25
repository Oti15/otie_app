import 'package:flutter/cupertino.dart';
import 'package:otie_app/view/order_review/widgets/card_order_review.dart';
import '../../model/cart_item_model.dart';

class ListItemReview extends StatelessWidget {
  const ListItemReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.65,
      child: ListView.builder(
          physics:ScrollPhysics(),
          itemCount: CardItemList.length,
          itemBuilder: (context, index) => CardOrderReview(
            icon: CardItemList[index].icon,
            name: CardItemList[index].name,
            price: CardItemList[index].price, des: 'Was & Fold, Dry Clean, Lanundry',
          )),
    );
  }
}
