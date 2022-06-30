import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:social_media/core/colors/colors.dart';
import 'package:social_media/core/themes/themes.dart';
import 'package:social_media/data/injectable/injectable.dart';
import 'package:social_media/data/models/user_model/user_model.dart';
import 'package:social_media/logic/authentication/create_account/create_account_bloc.dart';
import 'package:social_media/logic/authentication/login/login_bloc.dart';
import 'package:social_media/logic/theme/theme_bloc.dart';
import 'package:social_media/logic/user_data/user_data_bloc.dart';
import 'package:social_media/presentation/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());

  await Firebase.initializeApp();
  await Hive.initFlutter();
  await configureInjection();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: primaryBlue,
  ));

  if (!Hive.isAdapterRegistered(UserModelAdapter().typeId)) {
    Hive.registerAdapter(UserModelAdapter());
  }

  HydratedBlocOverrides.runZoned(
    () => runApp(MyApp()),
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<CreateAccountBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserDataBloc>(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 800),
          splitScreenMode: true,
          minTextAdapt: true,
          builder: (context, child) {
            return BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return MaterialApp(
                  theme: state.isDark ? MyTheme.darkTheme : MyTheme.lightTheme,
                  debugShowCheckedModeBanner: false,
                  // home: SplashScreen(),
                  onGenerateRoute: _appRouter.onGenerateRoute,
                  // routes: {
                  //   "/": (context) => SplashScreen(),
                  //   "/login": (context) => LoginScreen(),
                  //   "/signup": (context) => SignUpScreen(),
                  //   "/home": (context) => HomeScreen(),
                  // },

                  // home: SplashScreen(),
                );
              },
            );
          }),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
    );
  }
}
