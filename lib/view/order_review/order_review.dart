import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otie_app/view/order_review/widgets/card_order_review.dart';
import '../../utils/constants.dart';
import '../create_order_page/list_item_catogary.dart';
import '../widgets/my_buttom.dart';
import '../widgets/my_simple_app_bar.dart';
import 'list_item_review.dart';

class OrderReviewPage extends StatefulWidget {
  const OrderReviewPage({Key? key, required this.totalPrice}) : super(key: key);

  final int totalPrice;

  @override
  State<OrderReviewPage> createState() => _OrderReviewPageState();
}

class _OrderReviewPageState extends State<OrderReviewPage> {
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    int totalPrice = 0;
    return Scaffold(
      backgroundColor: primaryBgColor,
      appBar: MySimpleAppBar(title: 'Order Review'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const ListItemReview(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Subtotal (5 item) :",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: primaryFontSize,
                ),
              ),
            ),
            const Spacer(),
            const Spacer(),
            Text(
              "${widget.totalPrice} IDQ",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: xLargeTitleFontSize,
                  color: primaryColor),
            ),
            const Spacer(),
            MyButtom(
                text: "Booking Now",
                onPressed: () {},
                color: primaryColor,
                height: heightScreen * 0.07,
                width: widthScreen * 0.8),
            const Spacer(),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
