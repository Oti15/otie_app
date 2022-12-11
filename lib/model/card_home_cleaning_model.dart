import 'package:easy_localization/easy_localization.dart';

import '../view/washing_and_cleaning/details_washin_cleaning.dart';

class CardHomeCleaningModel {
  String icon;
  String title;
  String price;
  bool showDropDown;

  CardHomeCleaningModel({
    required this.icon,
    required this.title,
    required this.price,
    this.showDropDown = true,
  });
}

List<CardHomeCleaningModel> ListCardHomeCleaning = [
  CardHomeCleaningModel(
    title: 'carpet'.tr(),
    icon: 'assets/icons/carpet.png',
    price: '2000',
    showDropDown: true,
  ),
  CardHomeCleaningModel(
      title: 'furniture'.tr(),
      icon: 'assets/icons/furniture.png',
      price: '2000',
      showDropDown: false),
  CardHomeCleaningModel(
    title: 'curtains'.tr(),
    icon: 'assets/icons/curtains.png',
    price: '2000',
    showDropDown: true,
  ),
];
