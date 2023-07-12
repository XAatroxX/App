import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aatrox'),
      ),
      body: Center(
        child: const Text('HomeScreen')
      ),
      bottomNavigationBar: BottomNavigationBar(
       items: [
        BottomNavigationBarItem(icon: Icon(Icons.payments_outlined), label: 'Prestamos'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Clientes'),
        BottomNavigationBarItem(icon: Icon(Icons.money_off_csred_rounded), label: 'Gastos'),
        
       ], 
      )
    );
  }
}