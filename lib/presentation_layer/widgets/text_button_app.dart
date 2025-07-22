import '../../core/util/exports_app.dart';

class TextButtonApp extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final void Function()? onTap;
  const TextButtonApp({
    super.key,
    required this.text,
    this.textColor = ColorsApp.black,
    this.fontSize = 12,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => TextButton(
    onPressed: onTap,
    child: Text(
      text,
      style: context.headline1().copyWith(
        fontSize: fontSize.sp,
        color: textColor,
      ),
    ),
  );
}
