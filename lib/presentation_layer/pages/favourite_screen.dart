import '../../core/util/exports_app.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      ValueListenableBuilder<List<Map<String, dynamic>>>(
        valueListenable: NotifierVariables.favouritesProducts,
        builder:
            (context, productsFavouriteGroup, _) =>
                _checkScreenState(productsFavouriteGroup),
      );

  Widget _checkScreenState(List<Map<String, dynamic>> products) =>
      products.isEmpty
          ? const EmptyScreen(productsType: ConstantString.wishlist)
          : _buildProducts(products);

  Widget _buildProducts(List<Map<String, dynamic>> products) =>
      ListView.builder(
        itemBuilder:
            (context, index) => ProductListItem(product: products[index]),
        itemCount: products.length,
      );
}
