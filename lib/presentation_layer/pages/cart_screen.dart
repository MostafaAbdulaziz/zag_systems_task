import '../../core/util/exports_app.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      ValueListenableBuilder<List<Map<String, dynamic>>>(
        valueListenable: NotifierVariables.cartProducts,
        builder:
            (context, cartProducts, _) =>
                _checkScreenState(cartProducts, context),
      );

  Widget _checkScreenState(
    List<Map<String, dynamic>> products,
    BuildContext context,
  ) =>
      products.isEmpty
          ? const EmptyScreen(productsType: ConstantString.cart)
          : _buildCartScreen(products, context);

  Widget _buildCartScreen(
    List<Map<String, dynamic>> products,
    BuildContext context,
  ) => Column(
    children: [
      _buildTotalPrice(context),
      _buildProducts(products),
      _buildOrderButton(),
    ],
  );
  Widget _buildProducts(List<Map<String, dynamic>> products) => Expanded(
    child: ListView.builder(
      itemBuilder:
          (context, index) => ProductListItem(product: products[index]),
      itemCount: products.length,
    ),
  );
  Widget _buildOrderButton() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w),
    child: ElevatedButtonApp(
      text: ConstantString.order,
      onTap: () {},
      textSize: 18,
    ),
  );
}

Widget _buildTotalPrice(BuildContext context) => Container(
  width: double.infinity,
  margin: EdgeInsets.all(15.w),
  padding: EdgeInsets.symmetric(vertical: 10.w),
  decoration: BoxDecoration(
    color: ColorsApp.grey,
    borderRadius: BorderRadius.circular(18.r),
  ),
  child: _buildTotalPriceText(context),
);

Widget _buildTotalPriceText(BuildContext context) => Text(
  "Order Total: ${NotifierVariables.totalPrice.value} EGP",
  textAlign: TextAlign.center,
  style: context.headline1().copyWith(color: ColorsApp.mainColor),
);
