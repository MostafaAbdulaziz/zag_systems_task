import '../../core/util/exports_app.dart';

class CartButtonsItem extends StatelessWidget {
  final Map<String, dynamic> product;
  const CartButtonsItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Expanded(
        child: IconButtonApp(
          onTap: () {
            // if (product['count'] > 1) {
            //   product['count']--;
            //   product['initialPrice'] =
            //       product['initialPrice'] - product['price'];
            // }
          },
          icon: Icons.remove,
        ),
      ),
      Text('1', style: context.headline1()),
      IconButtonApp(
        onTap: () {
          // if (product['count'] == product['quantity']) {
          //   showMessageApp(
          //     context: context,
          //     message:
          //         'max number of product is ${product['quantity']}',
          //   );
          // } else {
          //   setState(() {
          //     if (product['count'] < product['quantity']) {
          //       product['count']++;
          //       product['initialPrice'] =
          //           product['price'] * product['count'];
          //     }
          //   });
          // }
        },
        icon: Icons.add,
      ),
      IconButtonApp(onTap: _deleteProduct, icon: Icons.delete),
    ],
  );

  void _deleteProduct() {
    product['inCart'] = !product['inCart'];
    product['count'] = 0;
    NotifierVariables.cartProducts.value =
        GettingProductsGroup(groupType: 'inCart').getProductsGroup();
  }
}
