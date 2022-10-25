import '../view/washing_and_cleaning/details_washin_cleaning.dart';

class CardHomeCleaningModel {
  String icon;
  String title;
  String price;
  bool showDropDown = true;

  CardHomeCleaningModel(
      {required this.icon,
      required this.title,
      required this.price,
      required this.showDropDown});
}

List<CardHomeCleaningModel> ListCardHomeCleaning = [
  CardHomeCleaningModel(
    title: 'Carpet',
    icon: 'assets/icons/carpet.png',
    price: '2,000',
    showDropDown: true,
  ),
  CardHomeCleaningModel(
      title: 'Furniture',
      icon: 'assets/icons/furniture.png',
      price: '2,000',
      showDropDown: false),
  CardHomeCleaningModel(
    title: 'Curtains',
    icon: 'assets/icons/curtains.png',
    price: '2,000',
    showDropDown: true,
  ),
];
