import '../../core/util/exports_app.dart';

class QuestionAndTextButton extends StatelessWidget {
  final String question;
  final String textButton;
  final VoidCallback onTap;
  const QuestionAndTextButton({
    super.key,
    required this.question,
    required this.textButton,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(question, style: context.headline2().copyWith(fontSize: 15.sp)),
      TextButtonApp(
        textColor: ColorsApp.red,
        fontSize: 16,
        text: textButton,
        onTap: onTap,
      ),
    ],
  );
}
