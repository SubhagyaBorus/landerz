import 'package:get/get.dart';
import 'package:landerz/Screens/Home/HomePage.dart';

class RoutesClass {
  static String home = "/";

  static String getHomeRoute() => home;

  static List<GetPage> routes = [GetPage(name: home, page: () => HomePage())];
}
