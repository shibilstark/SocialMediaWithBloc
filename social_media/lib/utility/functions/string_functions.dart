extension StringExtras on String {
  static String firstToUpper(String str) {
    return str.split("")[0].toUpperCase() + str.split("").removeAt(0);
  }
}
