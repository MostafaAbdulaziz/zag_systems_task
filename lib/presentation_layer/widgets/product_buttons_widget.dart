import '../../core/util/exports_app.dart';

class ProductButtonsWidget extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductButtonsWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) => Row(
    children: [
      _buildFavouriteButton(),
      const Spacer(),
      CartButton(product: product),
    ],
  );

  Widget _buildFavouriteButton() =>
      ValueListenableBuilder<List<Map<String, dynamic>>>(
        valueListenable: NotifierVariables.favouritesProducts,
        builder:
            (context, productsFavouriteGroup, _) => FloatingButtonApp(
              icon: _checkFavouriteIcon(),
              iconColor: ColorsApp.red,
              onTap: _onTap,
            ),
      );
  void _onTap() {
    product['isFavourite'] = !product['isFavourite'];
    NotifierVariables.favouritesProducts.value =
        GettingProductsGroup(groupType: 'isFavourite').getProductsGroup();
  }

  IconData _checkFavouriteIcon() =>
      product['isFavourite'] ? IconsApp.heart : IconsApp.borderHeart;
}

class CartButton extends StatefulWidget {
  final Map<String, dynamic> product;
  const CartButton({super.key, required this.product});
  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingButtonApp(
      icon: widget.product['inCart'] ? IconsApp.inCart : IconsApp.notInCart,
      iconColor: ColorsApp.black,
      onTap: () {
        setState(() {
          widget.product['inCart'] = !widget.product['inCart'];
          NotifierVariables.cartProducts.value =
              GettingProductsGroup(groupType: 'inCart').getProductsGroup();
        });
      },
    );
  }
}
