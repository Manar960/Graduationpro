import 'package:finalpro/views/opiningscreens/splash.dart';
import 'package:finalpro/views/stores/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
   
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Specify the initial route
      routes: {
      '/': (context) => SplashScreen(), // Your initial route
      'stores':(context) => HomeScreen2(), 

        // Add more routes as needed
      },
    );
  }
}

