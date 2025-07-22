import '../../core/util/exports_app.dart';

class ProductsViewedSession extends StatelessWidget {
  const ProductsViewedSession({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: [_buildSessionTitle(context), _buildViewedProductsGroup()],
  );
}

Widget _buildViewedProductsGroup() => SizedBox(
  height: 200.h,
  child: ListView.separated(
    padding: EdgeInsets.symmetric(vertical: 10.h),
    scrollDirection: Axis.horizontal,
    itemBuilder:
        (context, index) => ProductGridItem(product: viewedProducts[index]),
    separatorBuilder: (context, index) => SizedBox(width: 10.w),
    itemCount: viewedProducts.length,
  ),
);

Widget _buildSessionTitle(BuildContext context) => Padding(
  padding: EdgeInsets.symmetric(horizontal: 15.w),
  child: Row(
    children: [
      Text(ConstantString.recentlyViewed, style: context.headline1()),
      const Spacer(),
      const TextButtonApp(
        text: ConstantString.clear,
        textColor: ColorsApp.red,
        fontSize: 15,
      ),
      SizedBox(height: 30.h),
    ],
  ),
);
