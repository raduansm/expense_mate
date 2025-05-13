import 'package:expense_mate/features/auth/login/view/login_Screen.dart';
import 'package:expense_mate/features/home/view/home_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => LoginPage()),
    GetPage(name: '/HomeScreen', page: () => HomePage()),
  ];
}
