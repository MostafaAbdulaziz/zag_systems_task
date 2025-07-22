import '../../core/util/exports_app.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  const ImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) =>
      Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity);
}
