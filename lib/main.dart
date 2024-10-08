import 'package:deeplink/screens/home.dart';
import 'package:deeplink/services/context_utility.dart';
import 'package:deeplink/services/services.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UniServices.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: ContextUtility.navigatorKey, 
      title: "deeplink",
      theme: ThemeData(),
      home: const HomeScreen(), 
    );
  }
}

