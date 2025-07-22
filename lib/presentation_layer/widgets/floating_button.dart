import '../../core/util/exports_app.dart';

class FloatingButtonApp extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;
  const FloatingButtonApp({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => FloatingActionButton.small(
    //heroTag: hero,
    backgroundColor: ColorsApp.mainColor,
    onPressed: onTap,
    child: Icon(icon, color: iconColor),
  );
}
