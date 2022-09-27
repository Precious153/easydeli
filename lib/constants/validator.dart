class Validator {
  String? validateEmail(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty)
      return 'E-mail address is required.';

    String pattern = r'\w+@\w+\.\w+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';

    return null;
  }

  String? validatePassword(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty)
      return 'Password is required.';

    return null;
  }
  String? validateFullName(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty)
      return 'Full Name is required.';

    return null;
  }
  String? phoneNumberValidator(String value) {
    if (value == null || value.isEmpty)
      return 'Phone Number Required';

    String pattern = '^(?:[+0]9)?[0-9]{10}\$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Phone Number';
      return null;
  }
}