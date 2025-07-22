import '../../core/util/exports_app.dart';

class MyPhoneField extends StatelessWidget {
  final PhoneController? controller;
  final void Function(PhoneNumber?)? onChanged;

  const MyPhoneField({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return PhoneFormField(
      validator: validateEgyptianPhoneNumber,
      initialValue: PhoneNumber.parse('+20'),
      countrySelectorNavigator: const CountrySelectorNavigator.modalBottomSheet(
        backgroundColor: Colors.white,
        searchBoxDecoration: InputDecoration(
          fillColor: Colors.black,
          prefixIcon: Icon(Icons.search),
          iconColor: Colors.grey,
          hintText: 'Search here',
          hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
      countryButtonStyle: const CountryButtonStyle(
        dropdownIconColor: Colors.black,
      ),
      cursorColor: ColorsApp.red,
      shouldLimitLengthByCountry: true,
      cursorHeight: 15,
      cursorWidth: 2.2,
      decoration: buildInputDecoration(label: '123-456-7890'),
    );
  }
}

InputDecoration buildInputDecoration({required String label, Widget? suffix}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
    border: myBorder,
    labelText: label,
    suffixIcon: suffix,
    labelStyle: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    ),
  );
}

String? validateEgyptianPhoneNumber(PhoneNumber? value) {
  if (value == null || value.nsn.isEmpty) {
    return 'Please enter your number';
  }

  if (value.isoCode != IsoCode.EG) {
    return 'Available now only in Egypt. Sorry!';
  }

  final String national = value.nsn;
  final RegExp egyptianMobileRegex = RegExp(r'^1[0-2,5]\d{8}$');

  if (!egyptianMobileRegex.hasMatch(national)) {
    return 'Invalid mobile phone number';
  }

  return null;
}

final OutlineInputBorder myBorder = OutlineInputBorder(
  borderSide: const BorderSide(color: Colors.black12),
  borderRadius: BorderRadius.circular(9),
);
