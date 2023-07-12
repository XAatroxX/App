import 'package:aatrox_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aatrox', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListViewBuilder(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 116, 25, 18),
        selectedItemColor: Colors.white,

       items: [
        BottomNavigationBarItem(icon: Icon(Icons.payments_outlined), label: 'Prestamos'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Clientes'),
        BottomNavigationBarItem(icon: Icon(Icons.money_off_csred_rounded), label: 'Gastos'),
       ], 
      )
    );
  }
}

