import '../../core/util/exports_app.dart';

class IconButtonApp extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const IconButtonApp({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) =>
      IconButton(onPressed: onTap, icon: Icon(icon));
}
