import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/firebase_options.dart';
import 'package:plantapp/view/home_page_view.dart';
import 'package:plantapp/view/on_boarding_screen.dart';

import 'screens/Auth/phone_auth/otp_screen.dart';
import 'screens/Auth/phone_auth/phone_authentication.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: OTPScreen(
        verificationId: '',
      ),
    );
  }
}
