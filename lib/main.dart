import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pal_mail_project/screens/auth.dart';
import 'package:pal_mail_project/screens/home.dart';
import 'package:pal_mail_project/screens/login.dart';
import 'package:pal_mail_project/screens/new_inbox.dart';
import 'package:pal_mail_project/screens/serach_filter.dart';
import 'package:pal_mail_project/screens/sign_up.dart';
import 'package:pal_mail_project/screens/splash.dart';
import 'package:pal_mail_project/widget/details_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(428, 926),
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: SearchFilter.id,
          routes: {
            SplachScreen.id: (context) => SplachScreen(),
            AuthScreen.id: (context) => AuthScreen(),
            Login.id: (context) => Login(),
            SignUp.id: (context) => SignUp(),
            HomeScreen.id: (context) => HomeScreen(),
            DetailsScreen.id: (context) => DetailsScreen(),
            NewInbox.id: (context) => NewInbox(),
            SearchFilter.id:(context)=>SearchFilter()

          },
        );
      },
    );
  }
}
