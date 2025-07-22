import '../../core/util/exports_app.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: ColorsApp.mainColor,
    appBar: createAppBar(context),
    body: Center(
      child: ValueListenableBuilder(
        valueListenable: NotifierVariables.selectedIndex,
        builder: (context, index, _) => DataGroupApp.screens[index],
      ),
    ),
    bottomNavigationBar: const BottomNavBarWidget(),
  );
}
