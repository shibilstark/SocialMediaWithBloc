import 'package:flutter/material.dart';
import 'package:social_media/presentation/screens/home/home_screen.dart';
import 'package:social_media/presentation/screens/login/login_screen.dart';
import 'package:social_media/presentation/screens/profile/profile_screen.dart';
import 'package:social_media/presentation/screens/signup/singup_screen.dart';
import 'package:social_media/presentation/screens/splash/splash_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routSettings) {
    switch (routSettings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case "/login":
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case "/signup":
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case "/home":
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case "/profile":
        return MaterialPageRoute(builder: (_) => ProfileScreen());

      default:
        // return MaterialPageRoute(builder: (_) => SplashScreen());
        return null;
    }
  }
}
