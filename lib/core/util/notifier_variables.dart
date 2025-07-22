import 'exports_app.dart';

class NotifierVariables {
  static ValueNotifier<List<Map<String, dynamic>>> favouritesProducts =
      ValueNotifier<List<Map<String, dynamic>>>(favouriteProducts);
  static ValueNotifier<List<Map<String, dynamic>>> cartProducts =
      ValueNotifier<List<Map<String, dynamic>>>(allCartProducts);
  static final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  static final ValueNotifier<bool> toggleGroupView = ValueNotifier<bool>(true);
  static final ValueNotifier<double> totalPrice = ValueNotifier<double>(
    getTotalPrice(),
  );
}
