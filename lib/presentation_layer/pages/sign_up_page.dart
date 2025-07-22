import '../../core/util/exports_app.dart';

final nameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                Column(
                  children: [
                    createLogo(),
                    Padding(
                      padding: EdgeInsets.all(20.w),
                      child: _buildBody(context),
                    ),
                  ],
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
    Text(
      ConstantString.signUp,
      style: context.headline1().copyWith(fontSize: 22.sp),
    ),
    SizedBox(height: 18.h),
    CustomTextFormField(
      isPasswordField: false,
      labelText: ConstantString.name,
      controller: nameController,
    ),
    SizedBox(height: 20.h),
    const MyPhoneField(),
    SizedBox(height: 20.h),
    CustomTextFormField(
      isPasswordField: false,
      labelText: ConstantString.email,
      controller: emailController,
    ),
    SizedBox(height: 20.h),
    CustomTextFormField(
      isPasswordField: true,
      labelText: ConstantString.password,
      controller: passwordController,
    ),
    SizedBox(height: 30.h),
    ElevatedButtonApp(
      text: ConstantString.signUp,
      onTap: () {
        if (_formKey.currentState!.validate()) {}
      },
    ),
    SizedBox(height: 15.h),
    QuestionAndTextButton(
      question: ConstantString.haveAccount,
      textButton: ConstantString.login,
      onTap: () => navigateToLoginScreen(context),
    ),
  ],
);

void navigateToLoginScreen(BuildContext context) =>
    NavigationHelper.pop(context);
