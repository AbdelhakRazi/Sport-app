import 'package:flutter/material.dart';
import 'package:s2ee_mobile_app/config/theme.dart';
import 'package:s2ee_mobile_app/views/routes/routes.dart';
import 'package:s2ee_mobile_app/views/routes/routes_name.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(S2EEApp());
}

class S2EEApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "S2EE",
      theme: AppTheme.defaultTheme,
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: AppRoutes.home,
    );
  }
}
