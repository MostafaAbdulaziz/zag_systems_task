import '../../core/util/exports_app.dart';

class ProductImage extends StatelessWidget {
  final Map<String, dynamic> product;
  const ProductImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) => Expanded(
    child: Stack(
      alignment: Alignment.bottomRight,
      children: [
        ImageWidget(imagePath: product['image']),
        ContainerStock(isAvailable: product['isAvailable']),
      ],
    ),
  );
}
