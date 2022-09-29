import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:pro/layout/social_app/cubit/cubit.dart';
import 'package:pro/layout/social_app/social_layout.dart';

import 'package:pro/modules/social_app/social_login/social_login_screen.dart';
import 'package:pro/out/HomeScreen.dart';
import 'package:pro/shared/bloc_observer.dart';
import 'package:pro/shared/components/constants.dart';
import 'package:pro/shared/cubit/cubit.dart';
import 'package:pro/shared/cubit/states.dart';
import 'package:pro/shared/network/local/cache_helper.dart';
import 'package:pro/shared/network/remote/dio_helper.dart';
import 'package:pro/shared/styles/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  bool isDark = CacheHelper.getData(key: 'isDark');

  Widget widget;



  uId = CacheHelper.getData(key: 'uId');



  if(uId != null)
  {
    widget = SocialLayout();
  } else
  {
    widget = SocialLoginScreen();
  }

  runApp(MyApp(
    isDark: isDark,
    startWidget: widget,
  ));
}



class MyApp extends StatelessWidget
{

  final bool isDark;
  final Widget startWidget;

  MyApp({
    this.isDark,
    this.startWidget,
  });

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers: [

        BlocProvider(
          create: (BuildContext context) => AppCubit()
            ..changeAppMode(
              fromShared: isDark,
            ),
        ),
        BlocProvider(
          create: (BuildContext context) => SocialCubit()..getUserData()..getPosts(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(

            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.light,
            home: hme(),
          );
        },
      ),
    );
  }
}
// ./gradlew signingReport