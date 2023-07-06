import 'package:coffeshop_app/page/home_scren.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.brown,
          onPrimary: Colors.white,
          secondary: Colors.grey,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.red,
          background: Colors.brown,
          onBackground: Colors.brown,
          surface: Colors.brown,
          onSurface: Colors.brown,
        ),
        // primarySwatch: Colors.blue,

        fontFamily: 'Roboto',

        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.brown),
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.brown),
          elevation: 0,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
