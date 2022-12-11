class Order {
  late String itemId;
  late String quantity;

  Order({required this.itemId, required this.quantity});
}

List<Order> orders = [
   Order(itemId: '0', quantity: '200'),

];

class FinalOrder{
  late String totalPrice;
  late List order;

  FinalOrder(this.order, this.totalPrice);
}

