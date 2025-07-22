import 'package:zag_systems_task/presentation_layer/widgets/text_button_app.dart';

import '../../core/util/exports_app.dart';

AppBar createAppBar(BuildContext context) => AppBar(
  backgroundColor: ColorsApp.mainColor,
  elevation: 0,
  leading: _createAppLogo(),
  title: _createAppBarTitle(context),
  actions: createAppBarActions(context),
  titleSpacing: 2.w,
);

Widget _createAppLogo() => Padding(
  padding: EdgeInsets.only(left: 10.w),
  child: Image.asset(ImagesPath.appLogoPath),
);
Widget _createAppBarTitle(BuildContext context) => Row(
  children: [
    buildPowerText(),
    SizedBox(width: 3.w),
    _createZigSystemsText(context),
  ],
);
Widget buildPowerText() => Text(
  ConstantString.poweredBy,
  style: TextStyle(color: Colors.black, fontSize: 8.sp),
);
Widget _createZigSystemsText(BuildContext context) => Align(
  alignment: Alignment(-1.05.w, 0),
  child: RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: ConstantString.zag,
          style: context.headline1().copyWith(
            fontSize: 12.sp,
            color: ColorsApp.red,
          ),
        ),
        TextSpan(
          text: ConstantString.systems,
          style: context.headline1().copyWith(
            fontSize: 12.sp,
            color: ColorsApp.grey,
          ),
        ),
      ],
    ),
  ),
);
List<Widget> createAppBarActions(BuildContext context) => [
  Padding(
    padding: EdgeInsets.only(right: 15.w),
    child: ValueListenableBuilder(
      valueListenable: NotifierVariables.selectedIndex,
      builder: (context, index, _) => checkAction(index, context),
    ),
  ),
];
Widget checkAction(int index, BuildContext context) {
  switch (index) {
    case 0:
      return const Icon(Icons.search);
    case 1:
      return const TextButtonApp(text: ConstantString.clearCart);
    case 2:
      return const TextButtonApp(text: ConstantString.clearWishlist);
    default:
      return Container();
  }
}

// Widget _buildActionText(String text, BuildContext context, int index) =>
//     TextButton(
//       onPressed: () {},
//       child: Text(text, style: context.headline1().copyWith(fontSize: 12.sp)),
//     );
