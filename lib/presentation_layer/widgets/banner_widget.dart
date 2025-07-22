import '../../core/util/exports_app.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) => CarouselSlider(
    options: _createOptions(),
    items: List.generate(5, (index) => _buildBannerItem(index)),
  );
}

Widget _buildBannerItem(int index) => Container(
  width: 220.w,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
  clipBehavior: Clip.antiAlias,
  child: ProductGridItem(product: products[index]),
);

CarouselOptions _createOptions() => CarouselOptions(
  initialPage: 0,
  aspectRatio: 5 / 3,
  autoPlay: true,
  autoPlayInterval: const Duration(seconds: 2),
  autoPlayCurve: Curves.fastOutSlowIn,
  scrollDirection: Axis.horizontal,
  viewportFraction: 0.6, // يخلي العنصر الحالي كبير والباقي باين صغير
  enlargeCenterPage: true, // يخلي العنصر اللي ف النص أكبر
  enlargeStrategy: CenterPageEnlargeStrategy.scale, // تأثير الزو
);
