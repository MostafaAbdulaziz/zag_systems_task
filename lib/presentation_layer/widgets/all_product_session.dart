import '../../core/util/exports_app.dart';

class AllProductsSession extends StatelessWidget {
  const AllProductsSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildTitleAndShapeController(context), _buildAllProducts()],
    );
  }
}

Widget _buildTitleAndShapeController(BuildContext context) => Padding(
  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
  child: Row(
    children: [
      Text(ConstantString.allProducts, style: context.headline1()),
      const Spacer(),
      IconButtonApp(onTap: () {}, icon: IconsApp.filter),
      _buildControllerButton(),
    ],
  ),
);

Widget _buildControllerButton() => ValueListenableBuilder(
  valueListenable: NotifierVariables.toggleGroupView,
  builder:
      (context, value, _) =>
          IconButtonApp(onTap: _changeListShape, icon: _checkIcon()),
);

IconData _checkIcon() =>
    NotifierVariables.toggleGroupView.value
        ? IconsApp.listView
        : IconsApp.gridView;
void _changeListShape() =>
    NotifierVariables.toggleGroupView.value =
        !NotifierVariables.toggleGroupView.value;
Widget _buildAllProducts() => SizedBox(
  height: 300.h,
  child: ValueListenableBuilder(
    valueListenable: NotifierVariables.toggleGroupView,
    builder: (context, value, _) => _buildProductsGroup(),
  ),
);
Widget _buildProductsGroup() =>
    NotifierVariables.toggleGroupView.value
        ? _buildListShape()
        : _buildGridShape();
Widget _buildListShape() => ListView.builder(
  shrinkWrap: true,
  itemBuilder: (context, index) => ProductListItem(product: products[index]),
  itemCount: products.length,
);
Widget _buildGridShape() => GridView.count(
  mainAxisSpacing: 10.w,
  crossAxisSpacing: 8.h,
  crossAxisCount: 2,
  shrinkWrap: true,
  childAspectRatio: 4 / 6,
  children: List.generate(
    products.length,
    (index) => ProductGridItem(product: products[index]),
  ),
);
