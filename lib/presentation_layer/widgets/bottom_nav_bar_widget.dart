import '../../core/util/exports_app.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
    valueListenable: NotifierVariables.selectedIndex,
    builder:
        (context, index, _) => BottomNavigationBar(
          backgroundColor: ColorsApp.mainColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey[700],
          currentIndex: NotifierVariables.selectedIndex.value,
          onTap: (int index) => NotifierVariables.selectedIndex.value = index,
          items: _createSessionGroup(),
        ),
  );
}

List<BottomNavigationBarItem> _createSessionGroup() => List.generate(
  DataGroupApp.sessionsNames.length,
  (index) => _createSessionItem(DataGroupApp.sessionsNames[index]),
);

BottomNavigationBarItem _createSessionItem(Map<String, dynamic> session) =>
    BottomNavigationBarItem(
      icon: Icon(session['icon']),
      label: session['label'],
    );
