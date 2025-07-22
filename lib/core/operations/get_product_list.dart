import '../../core/util/exports_app.dart';

class GettingProductsGroup {
  final String groupType;
  GettingProductsGroup({required this.groupType});
  List<Map<String, dynamic>> getProductsGroup() {
    return products.where((product) => product[groupType]).toList();
  }
}
