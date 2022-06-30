class FormValidators {
  static bool emailValidator({required String value}) {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (emailValid) {
      return true;
    } else {
      return false;
    }
  }

  static bool nameValidator({required String value}) {
    final bool nameValid = RegExp("[a-zA-Z]").hasMatch(value);
    if (nameValid) {
      return true;
    } else {
      return false;
    }
  }

  static bool passwordValidator({required String value}) {
    final bool password =
        value.length >= 4 && !value.contains(" ") ? true : false;
    if (password) {
      return true;
    } else {
      return false;
    }
  }
}
