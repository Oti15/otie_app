class CardItemModel{
  late final String icon;
  late final String name;
  late final String price;
  late final String des;

  CardItemModel({required this.icon,required this.name,required this.price,required this.des});

}

List<CardItemModel> CardItemList=[
  CardItemModel(icon: 'assets/icons/Tshirt_icon.png', name: 'T-shirt', price: '2,000', des: 'late final String price'),
  CardItemModel(icon: 'assets/icons/jacket_icon.png', name: 'Jacket', price: '2,000', des: 'late final String price'),
  CardItemModel(icon: 'assets/icons/jeans_icon.png', name: 'Jeans', price: '2,000', des: 'late final String price'),
  CardItemModel(icon: 'assets/icons/shirt_icon.png', name: 'Shirt', price: '2,000', des: 'late final String price'),
  CardItemModel(icon: 'assets/icons/dress_icon.png', name: 'Dress', price: '2,000', des: 'late final String price'),
];