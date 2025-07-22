import '../../core/util/exports_app.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final bool isPasswordField;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    this.suffix,
    this.validator,
    this.isPasswordField = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator:
          widget.validator ??
          (value) {
            if (value == null || value.trim().isEmpty) {
              return "Field can't be empty!";
            }
            return null;
          },
      obscureText: widget.isPasswordField ? _obscureText : false,
      cursorWidth: 2.2,
      cursorHeight: 15,
      cursorColor: ColorsApp.red,
      decoration: _buildDecor(),
    );
  }

  InputDecoration _buildDecor() => InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
    enabledBorder: myBorder,
    focusedBorder: myBorder,
    border: myBorder,
    labelText: widget.labelText,
    labelStyle: context.headline2(),
    suffixIcon: widget.isPasswordField ? _buildVisibilityIcon() : widget.suffix,
  );

  Widget _buildVisibilityIcon() => IconButtonApp(
    icon: _obscureText ? Icons.visibility_off : Icons.visibility,
    onTap: () {
      setState(() {
        _obscureText = !_obscureText;
      });
    },
  );
}
