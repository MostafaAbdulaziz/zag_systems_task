import 'package:zag_systems_task/presentation_layer/pages/sign_up_page.dart';

import '../../core/util/exports_app.dart';

final passwordController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.mainColor,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                createLogo(),
                Padding(
                  padding: EdgeInsets.all(20.w),
                  child: _buildBody(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildBody(BuildContext context) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 70.h),
    Text(
      ConstantString.login,
      style: context.headline1().copyWith(fontSize: 25.sp),
    ),
    SizedBox(height: 20.h),
    const MyPhoneField(),
    SizedBox(height: 20.h),
    CustomTextFormField(
      isPasswordField: true,
      labelText: ConstantString.labelPassword,
      controller: passwordController,
    ),
    SizedBox(height: 40.h),
    ElevatedButtonApp(
      text: ConstantString.login,
      onTap: () => loginProcess(context),
    ),
    SizedBox(height: 10.h),
    QuestionAndTextButton(
      question: ConstantString.haveNoAccount,
      textButton: ConstantString.signUp,
      onTap: () => _gotoSignUpScreen(context),
    ),
  ],
);

Widget createLogo() => SizedBox(
  width: 180.w,
  child: const ImageWidget(imagePath: ImagesPath.zgLogoSmallPath),
);

void _gotoSignUpScreen(BuildContext context) =>
    NavigationHelper.navigateWithSlide(context, const SignUpScreen());
void loginProcess(BuildContext context) {
  if (_formKey.currentState!.validate()) {
    NavigationHelper.pushReplacementWithFade(context, const MainScreen());
  }
}
