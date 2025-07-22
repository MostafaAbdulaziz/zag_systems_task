import '../../core/util/exports_app.dart';

class ElevatedButtonApp extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double textSize;
  const ElevatedButtonApp({
    super.key,
    required this.text,
    required this.onTap,
    this.textSize = 14,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: onTap,
    style: _buildStyle(),
    child: _createTextButton(context),
  );
  Widget _createTextButton(BuildContext context) => Text(
    text,
    style: context.headline1().copyWith(
      fontSize: textSize.sp,
      color: ColorsApp.mainColor,
    ),
  );
}

ButtonStyle _buildStyle() => ElevatedButton.styleFrom(
  padding: EdgeInsets.symmetric(vertical: 5.w),
  minimumSize: Size(double.infinity, 40.h),
  backgroundColor: ColorsApp.red,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
);
