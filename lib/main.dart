import 'package:coffee_app/details.dart';
import 'package:coffee_app/home.dart';
import 'package:coffee_app/menu.dart';
import 'package:coffee_app/summary.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    "/": (context) => Home(),
    "/menu":((context) => Menu()),
    "/details": ((context) => Details()),
    "/summary": ((context) => Summary()),
  }
));

