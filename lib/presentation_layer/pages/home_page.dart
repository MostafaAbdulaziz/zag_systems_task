import '../../core/util/exports_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => const SafeArea(
    child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: ProductsViewedSession()),
        SliverToBoxAdapter(child: CategoriesSession()),
        SliverToBoxAdapter(child: TrendingProductsSession()),
        SliverToBoxAdapter(child: AllProductsSession()),
      ],
    ),
  );
}
