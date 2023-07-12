import 'package:aatrox_app/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginScreen(),
        'home':(context) => HomeScreen(),
        'dataLoan':(context) => DataLoan()
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 116, 25, 18)
        ),
        
      ),
    );
  }
}