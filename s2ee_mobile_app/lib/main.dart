import 'package:flutter/material.dart';
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
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: AppRoutes.home,
    );
  }
}
