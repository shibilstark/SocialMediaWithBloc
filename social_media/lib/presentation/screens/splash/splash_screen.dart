import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_media/core/colors/colors.dart';
import 'package:social_media/data/db/user_credentials/user_cred.dart';
import 'package:social_media/data/preferences/login_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // await Future.delayed(const Duration(seconds: 1));
      // await Navigator.of(context).pushReplacementNamed("/login");
      final model = await UserCred.GetUserCred();

      if (model == null) {
        await Navigator.of(context).pushReplacementNamed("/login");
      } else {
        final status = await checkLoginStatus();

        if (status) {
          await Navigator.of(context).pushReplacementNamed("/home");
        } else {
          await Navigator.of(context).pushReplacementNamed("/login");
        }
      }
    });
    return Scaffold(
      backgroundColor: primaryBlue,
      body: Center(
          child: CircularProgressIndicator(
        color: secondaryBlue,
      )),
    );
  }
}
