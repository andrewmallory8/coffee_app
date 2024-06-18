import 'package:coffee_app/details.dart';
import 'package:coffee_app/home.dart';
import 'package:coffee_app/menu.dart';
import 'package:coffee_app/summary.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const Home(),
          '/menu': ((context) => const Menu()),
          '/details': ((context) => const Details()),
          '/summary': ((context) => const Summary()),
        },
        theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.light,
            seedColor: Colors.brown,
          ),
        ),
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.dark,
            seedColor: Colors.brown,
          ),
        ),
      ),
    );
