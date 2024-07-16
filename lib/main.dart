import 'package:flutter/material.dart';
import 'package:see_eat/screens/onboarding/onboarding_page_1.dart';
import 'package:see_eat/screens/onboarding/onboarding_page_2.dart';
import 'package:see_eat/screens/onboarding/onboarding_page_3.dart';
import 'package:see_eat/screens/login/login_page.dart';
import 'package:see_eat/screens/register/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SeeEat',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
      routes: {
        '/onboarding1': (context) => OnboardingPage1(),
        '/onboarding2': (context) => OnboardingPage2(),
        '/onboarding3': (context) => OnboardingPage3(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding1');
    });
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Image.asset(
          'assets/splash_screen.png',
          width: 200,  // Resmin genişliğini burada ayarlayabilirsiniz
          height: 200, // Resmin yüksekliğini burada ayarlayabilirsiniz
          fit: BoxFit.contain, // Resmin boyutunu ayarlamak için fit parametresini kullanabilirsiniz
        ),
      ),
    );
  }
}