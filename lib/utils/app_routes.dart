import 'package:login_assignment/about_page.dart';
import 'package:login_assignment/login_page.dart';
import 'package:login_assignment/signup_screen.dart';

final appRoutes = {
  '/': (context) => LoginPage(),
  '/about': (context) => AboutPage(),
  '/signup': (context) => SignUpScreen(),
};
