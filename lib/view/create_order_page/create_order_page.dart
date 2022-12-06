import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:http/http.dart';
import 'package:otie_app/utils/total_price.dart';
import 'package:otie_app/widgets/card_item.dart';

import '../../model/cart_item_model.dart';
import '../../services/api_services.dart';
import '../../utils/constants.dart';
import '../order_review/order_review.dart';
import '../widgets/my_buttom.dart';
import '../widgets/my_simple_app_bar.dart';
import 'list_item_catogary.dart';
import 'package:http/http.dart' as http;

class CreateOrderPage extends StatefulWidget {
  const CreateOrderPage({Key? key}) : super(key: key);

  @override
  State<CreateOrderPage> createState() => _CreateOrderPageState();
}

class _CreateOrderPageState extends State<CreateOrderPage> {
  Future getItems() async {
    var url = Uri.parse("https://otie-app.herokuapp.com/items?section=laundry");
    var response = await http.get(url);
    Map<String, dynamic> map = json.decode(response.body);
    List list1 = map.values.toList();
    CardItemList.clear();
    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 5; j++) {
        CardItemList.add(CardItemModel(
            icon: list1[i][j]['imageUrl'],
            name: list1[i][j]['nameEN'],
            price: list1[i][j]['price'].toString(),
            des: tr('late_final_string_price'),
            itemId: list1[i][j]['_id'].toString()));
        setState(() {});
        print("============================================");
        print(list1[i][j]);
        print(list1[i][j]['_id']);
        print("============================================");
        // print(list1[j]);

      }
    }
    print(list1);
    print("============================================");
    print(CardItemList.length);
  }

  @override
  void initState() {
     getItems();
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primaryBgColor,
      appBar: MySimpleAppBar(
        title: tr('creatـorder'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // TextButton(
            //     onPressed: () {
            //       //getItems();
            //     },
            //     child: Text("Get Data")),
            ItemCatogaryList(),
            Spacer(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tr("total_price"),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: xLargeTitleFontSize),
                  ),
                  Obx(() => Text(
                        "${totalLaundryPrice.value} ${tr("currency")} ",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: xLargeTitleFontSize),
                      )),
                ],
              ),
            ),
            Spacer(),
            MyButtom(
                text: tr("add_to_cart"),
                onPressed: () {
                  if (totalLaundryPrice.value != null &&
                      totalLaundryPrice.value != 0) {
                    Get.to(OrderReviewPage(
                      totalPrice: totalLaundryPrice.value,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(tr("snackbar_select_item")),
                      ),
                    );
                  }

                  Order();
                },
                color: primaryColor,
                height: heightScreen * 0.07,
                width: widthScreen * 0.8),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }

  void Order() {}
}
