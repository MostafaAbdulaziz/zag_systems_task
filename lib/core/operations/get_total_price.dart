import '../util/lists_app.dart';

double totalPrice = 0;

double getTotalPrice() {
  allCartProducts.map((product) {
    totalPrice = totalPrice + product['initialPrice'];
  }).toList();
  return totalPrice;
}
