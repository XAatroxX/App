import 'package:aatrox_app/provider/navigation_bar_current.dart';
import 'package:aatrox_app/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context) => NavigationBarCurrent(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login': (context) => LoginScreen(),
          'home':(context) => HomeScreen(),
          'dataLoan':(context) => DataLoan()
        },
        theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(255, 116, 25, 18)
          ),
          
        ),
      ),
    );
  }
}