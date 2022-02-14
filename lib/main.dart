import 'package:flutter/material.dart';
import 'package:login_assignment/utils/app_routes.dart';

void main() {
  runApp(MaterialApp(
    title: 'EAT CODE SLEEP REPEAT',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    initialRoute: '/',
    routes: appRoutes,
  ));
}
