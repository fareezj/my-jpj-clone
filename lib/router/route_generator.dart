import 'package:flutter/material.dart';
import 'package:my_jpj_sample/features/home/home_screen.dart';
import 'package:my_jpj_sample/features/secondScreen/second_screen.dart';
import 'package:my_jpj_sample/router/bottom_nav.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/second-screen':
        var args = settings.arguments as SecondScreenArguments;
        return MaterialPageRoute(builder: (_) => SecondScreen(image: args.image));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> mainNavigation() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/main'),
        builder: (_) {
          return const BottomNavigationRoute();
        });
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(appBar: AppBar(title: const Text('Error')));
    });
  }
}

class SecondScreenArguments {
  final String image;

  SecondScreenArguments({required this.image});
}
