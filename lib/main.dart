import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ncl_app/presentation/screens/home_page.dart';
import 'package:ncl_app/presentation/screens/ship_detail.dart';
import 'package:ncl_app/utils/constants.dart';
import 'package:ncl_app/utils/extensions.dart';

void main() {
  runApp(const ProviderScope(child: NclApp()));
}

class NclApp extends StatelessWidget {
  const NclApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NCL Tech Assessment App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'shipDetail': (context) => const ShipDetail(),
      },
      theme: ThemeData(
        primarySwatch: regentsGold.toMaterialColor(),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Cinzel Regular',
            fontSize: 24,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontFamily: 'Cinzel Regular',
            fontSize: 20,
            color: regentsGold,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: regentsGold,
            textStyle: const TextStyle(
              fontFamily: 'Gotham Book',
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            minimumSize: const Size(120, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ),
      ),
    );
  }
}
