import 'package:flutter/material.dart';
import 'package:otp_fields/screens/otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Otp Fields',
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          height: 40,
          color: const Color(0xff5DB1DF),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const OtpScreen(),
            ),
          ),
          child: const Text(
            'go to otp screen',
          ),
        ),
      ),
    );
  }
}
