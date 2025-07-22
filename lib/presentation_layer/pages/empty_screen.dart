import '../../core/util/exports_app.dart';

class EmptyScreen extends StatelessWidget {
  final String productsType;
  const EmptyScreen({super.key, required this.productsType});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('$productsType is Empty'),
      SizedBox(height: 10.h),
      SizedBox(
        width: 100.w,
        height: 45.h,
        child: ElevatedButtonApp(text: 'Reload', onTap: () {}),
      ),
    ],
  );
}
