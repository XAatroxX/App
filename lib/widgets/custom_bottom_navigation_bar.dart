import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/navigation_bar_current.dart';

class CustomButtonNavitaionBar extends StatelessWidget {
  const CustomButtonNavitaionBar({super.key});

  @override
  Widget build(BuildContext context) {

    final navigation = Provider.of<NavigationBarCurrent>(context);

    return BottomNavigationBar(
      currentIndex: navigation.currentIndex,
      backgroundColor: const Color.fromARGB(255, 116, 25, 18),
      selectedItemColor: Colors.white,
      onTap: (value) {
        navigation.currentIndex = value;
      },

      items: const [
          BottomNavigationBarItem(icon: Icon(Icons.payments_outlined), label: 'Prestamos'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Clientes'),
          BottomNavigationBarItem(icon: Icon(Icons.money_off_csred_rounded), label: 'Gastos'),
      ], 
    );
  }
}