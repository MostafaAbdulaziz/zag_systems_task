import '../../core/util/exports_app.dart';

class CategoriesSession extends StatelessWidget {
  const CategoriesSession({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 12.w),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(ConstantString.categories, style: context.headline1()),
        SizedBox(height: 10.h),
        _buildButtonsGroup(),
      ],
    ),
  );
}

Widget _buildButtonsGroup() => SizedBox(
  height: 100.h,
  child: GridView.count(
    physics: const NeverScrollableScrollPhysics(),
    mainAxisSpacing: 10.w,
    padding: EdgeInsets.all(5.w),
    crossAxisSpacing: 8.h,
    crossAxisCount: 2,
    childAspectRatio: 4 / 1,
    children: List.generate(
      DataGroupApp.buttonsDataGroup.length,
      (index) => ElevatedButtonApp(
        text: DataGroupApp.buttonsDataGroup[index],
        onTap: () {},
      ),
    ),
  ),
);
