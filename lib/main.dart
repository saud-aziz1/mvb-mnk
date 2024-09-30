import 'package:flutter/material.dart';
import 'package:pkmnk/service_provider_dashboard.dart';
import 'login_screen.dart';
import 'splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Pkmnk());
}

class Pkmnk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "mnaker",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        hintColor: Colors.grey,
      ),
      home: LoginScreen(),
    );
  }
}
