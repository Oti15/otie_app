import 'package:easy_localization/easy_localization.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class CardItemModel{
  late final String icon;
  late final String name;
  late final String price;
  late final String des;
  late final String itemId;
  CardItemModel({required this.icon,required this.name,required this.price,required this.des,required this.itemId});

}

List <CardItemModel>  CardItemList=[
  CardItemModel(icon: 'assets/icons/Tshirt_icon.png', name: tr('T_shirt'), price: '2000', des: 'late_final_string_price'.tr(), itemId: '1'),
  CardItemModel(icon: 'assets/icons/jacket_icon.png', name: 'jacket'.tr(), price: '2000', des: 'late_final_string_price'.tr(), itemId: '2'),
  CardItemModel(icon: 'assets/icons/jeans_icon.png', name: 'jeans'.tr(), price: '2000', des: 'late_final_string_price'.tr(), itemId: '3'),
  CardItemModel(icon: 'assets/icons/shirt_icon.png', name: 'shirt'.tr(), price: '2000', des: 'late_final_string_price'.tr(), itemId: '4'),
  CardItemModel(icon: 'assets/icons/dress_icon.png', name: 'dress'.tr(), price: '2000', des: 'late_final_string_price'.tr(), itemId: '5'),
];