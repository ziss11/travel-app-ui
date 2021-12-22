import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/style/colors.dart';
import 'package:travel_app/style/text_style.dart';

void main() => (runApp(const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        primaryColor: kWhiteColor,
        scaffoldBackgroundColor: kWhiteColor,
        textTheme: kTextTheme,
      ),
      home: const HomePage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (_) => const HomePage());
          case DetailPage.routName:
            return MaterialPageRoute(builder: (_) => const DetailPage());
          default:
            return MaterialPageRoute(
              builder: (_) {
                return Scaffold(
                  body: Center(
                    child: Text(
                      'Page Not Found!!!',
                      style: kTitle,
                    ),
                  ),
                );
              },
            );
        }
      },
    );
  }
}
