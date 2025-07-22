import 'package:zag_systems_task/presentation_layer/widgets/product_image.dart';

import '../../core/util/exports_app.dart';

class ProductListItem extends StatelessWidget {
  final Map<String, dynamic> product;
  const ProductListItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) => Container(
    margin: const EdgeInsets.all(12),
    padding: const EdgeInsets.all(12),
    decoration: _createBoxDecoration(),
    child: _createProductData(context),
  );

  BoxDecoration _createBoxDecoration() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    boxShadow: const [
      BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
    ],
  );

  Widget _createProductData(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ProductImage(product: product),
      SizedBox(width: 12.w),
      _createProductDetails(context),
    ],
  );

  Widget _createProductDetails(BuildContext context) => Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _setProductTitle(product['title'], context),
        SizedBox(height: 4.h),
        _setProductDescription(product['description'], context),
        const SizedBox(height: 6),
        _setProductPrice('${product['price']}EG', context),
        const SizedBox(height: 4),
        _setProductType(product['type'], context),
        _checkNavIndex(product),
      ],
    ),
  );
}

Widget _checkNavIndex(Map<String, dynamic> product) {
  if (NotifierVariables.selectedIndex.value == 1) {
    return CartButtonsItem(product: product);
  } else {
    return ProductButtonsWidget(product: product);
  }
}

Text _setProductTitle(String title, BuildContext context) =>
    Text(title, style: context.headline1().copyWith());
Text _setProductDescription(String description, BuildContext context) => Text(
  description,
  style: context.headline2(),
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
);
Text _setProductPrice(String price, BuildContext context) =>
    Text(price, style: context.headline1().copyWith());
Text _setProductType(String type, BuildContext context) =>
    Text(type, style: context.headline2().copyWith(color: ColorsApp.red));
