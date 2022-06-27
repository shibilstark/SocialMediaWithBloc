import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media/data/models/user_model/user_model.dart';

const LOGIN_PREF_KEY = "IS_LOGGED";

Future<bool> checkLoginStatus({required UserModel model}) async {
  final sharedPreferences = await SharedPreferences.getInstance();

  final onceChecked = sharedPreferences.getBool(LOGIN_PREF_KEY);

  // if (onceChecked == null || onceChecked == false) {
  //   await Get.to(() => LoginScreen());
  //   return false;
  // } else {
  //   await Get.to(() => HomeScreen(
  //         model: model,
  //       ));
  //   return true;
  // }
  return true;
}

setStatusAsLoggedIn() async {
  final _sharedPrefs = await SharedPreferences.getInstance();
  await _sharedPrefs.setBool(LOGIN_PREF_KEY, true);
}

setStatusAsLoggedOut() async {
  final _sharedPrefs = await SharedPreferences.getInstance();
  await _sharedPrefs.setBool(LOGIN_PREF_KEY, false);
}
