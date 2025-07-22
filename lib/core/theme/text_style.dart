import '../util/exports_app.dart';

extension AppTextStyles on BuildContext {
  TextStyle headline1() => Theme.of(this).textTheme.headlineLarge!.copyWith(
    fontWeight: FontWeight.w900,
    fontSize: 18.sp,
  );

  TextStyle headline2() => Theme.of(
    this,
  ).textTheme.headlineMedium!.copyWith(fontSize: 13.sp, color: ColorsApp.grey);

  // TextStyle bodyText() =>
  //     Theme.of(this).textTheme.bodyMedium!.copyWith(fontSize: 16);
  //
  // TextStyle caption() =>
  //     Theme.of(this).textTheme.labelSmall!.copyWith(fontSize: 12);

  // TextStyle linkText() => Theme.of(this).textTheme.bodySmall!.copyWith(
  //   fontSize: 14,
  //   color: Theme.of(this).colorScheme.secondary,
  //   decoration: TextDecoration.underline,
  // );
}
