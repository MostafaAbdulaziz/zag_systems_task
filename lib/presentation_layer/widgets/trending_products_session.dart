import '../../core/util/exports_app.dart';

class TrendingProductsSession extends StatelessWidget {
  const TrendingProductsSession({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 15.w, bottom: 8.h),
        child: Text(
          ConstantString.trendingProducts,
          style: context.headline1().copyWith(fontSize: 22.sp),
        ),
      ),
      const BannerWidget(),
    ],
  );
}
