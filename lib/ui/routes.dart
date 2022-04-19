import 'package:flutter/material.dart';
import 'package:niot_app/ui/views/home/home.dart';
import 'package:niot_app/ui/views/splash/splash.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashView());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}