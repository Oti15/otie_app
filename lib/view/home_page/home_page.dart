import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:otie_app/utils/constants.dart';
import 'package:otie_app/view/home_page/page_view/page_view_main.dart';
import 'package:otie_app/view/home_page/widgets/home_page_app_bar.dart';
import '../create_order_page/create_order_page.dart';
import '../home_clening/view1.dart';
import '../washing_and_cleaning/washing_and_cleaning.dart';
import 'widgets/catogary.dart';
import 'widgets/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  List<String> names = ["bronze".tr(), "silver".tr(), "gold".tr()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBgColor,
        appBar: HomePageAppBar(),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: EdgeInsets.only(left: 20, right: 20,top: 10, bottom: 5),
                  child: Text(
                    "OTIEـPromos".tr(),
                    style: const TextStyle(
                        fontSize: largeTitleFontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bold',
                        color: Colors.black),
                  ),
                ),
                MyPageView(
                  pageCount: 3,
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 20,right: 20, top: 25),
                  child: Text(
                    "select_servies".tr(),
                    style: const TextStyle(
                        fontSize: largeTitleFontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bold',
                        color: Colors.black),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        catogary(
                          x: false,
                          name: 'homeـcleaning'.tr(),
                          image: 'assets/images/home_cleaning.png',
                          detailsPage: HomeCleningp1(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        catogary(
                          x: false,
                          name: 'laundry'.tr(),
                          image: 'assets/images/laundry.png',
                          detailsPage: CreateOrderPage(),
                        )
                      ],
                    ),
                   catogary(
                      x: true,
                      name: 'washing_and_cleaning'.tr(),
                      image: 'assets/images/washing_and_cleaning.png',
                     detailsPage: WashingCLeaning(),
                    )
                  ],
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 25,right: 20, top: 25),
                  child: Text(
                    "home_cleaning_services".tr(),
                    style: const TextStyle(
                        fontSize: largeTitleFontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bold',
                        color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: names.length,
                      itemBuilder: (BuildContext context, int index) {
                        return services(name: names[index]);
                      }),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ],
        ));
  }
}
