import '../../core/util/exports_app.dart';

class ProductGridItem extends StatelessWidget {
  final Map<String, dynamic> product;
  const ProductGridItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(10.w),
    width: 180.w,
    decoration: buildDecor(),
    child: _buildCardContents(context, product),
  );

  Widget _buildCardContents(
    BuildContext context,
    Map<String, dynamic> product,
  ) => Column(
    children: [
      ProductImage(product: product),
      Text(product['title'], style: context.headline1()),
      ProductButtonsWidget(product: product),
      SizedBox(height: 10.h),
      _setProductPrice(context, product['price'].toString()),
    ],
  );

  Widget _setProductPrice(BuildContext context, String price) => Align(
    alignment: Alignment.topLeft,
    child: Text(
      '$price EGP',
      style: context.headline1().copyWith(fontSize: 12.sp),
    ),
  );

  BoxDecoration buildDecor() => BoxDecoration(
    borderRadius: BorderRadius.circular(20.r),
    border: Border.all(width: 2, color: ColorsApp.grey.withAlpha(100)),
    color: ColorsApp.mainColor,
    boxShadow: const [
      BoxShadow(spreadRadius: -15, blurRadius: 20, offset: Offset(5, 5)),
    ],
  );
}
