import '../../core/util/exports_app.dart';

class ContainerStock extends StatelessWidget {
  final bool isAvailable;
  const ContainerStock({super.key, required this.isAvailable});

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(5.w),
    decoration: _setContainerDecoration(isAvailable),
    child: _buildStockText(isAvailable, context),
  );
}

BoxDecoration _setContainerDecoration(bool isAvailable) => BoxDecoration(
  color: _getStockColor(isAvailable),
  borderRadius: BorderRadius.circular(10.r),
);
Text _buildStockText(bool isAvailable, BuildContext context) => Text(
  _getStockText(isAvailable),
  style: context.headline1().copyWith(
    color: ColorsApp.mainColor,
    fontSize: 12.sp,
  ),
);
String _getStockText(bool isAvailable) =>
    isAvailable ? ConstantString.inStock : ConstantString.outOfStock;
Color _getStockColor(bool isAvailable) =>
    isAvailable ? ColorsApp.green : ColorsApp.red;
