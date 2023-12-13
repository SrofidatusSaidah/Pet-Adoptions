import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prakmobile_6/Onboarding.dart';
import 'package:prakmobile_6/view_ui/login.dart';
import 'firebase_options.dart';

// import 'package:prakmobile_6/view/testreqres.dart';
late FirebaseApp app;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Adoption App',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      )),
      home: const OnBoarding(),
    );
  }
}
