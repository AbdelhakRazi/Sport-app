import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s2ee_mobile_app/views/routes/routes_name.dart';
import 'package:s2ee_mobile_app/views/screens/screens.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // home
      case AppRoutes.home:
        return _pageAnimatedRoute(HomeScreen(), settings);
      case AppRoutes.login:
      return _pageAnimatedRoute(LoginScreen(),settings);

      // default
      default:
        return _pageAnimatedRoute(HomeScreen(), settings);
    }
  }

  /// Create Custom Transition for Navigation
  static Route<dynamic> _pageAnimatedRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  /// Navigation Without Transition (Animtaion)
  static Route<dynamic> _pageSimpleRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, _, __) => page,
    );
  }

  ///Navigation With IOS Transition
  static Route<dynamic> _pageCupertino(Widget page, RouteSettings settings) {
    return CupertinoPageRoute(builder: (_) => page, settings: settings);
  }
}
