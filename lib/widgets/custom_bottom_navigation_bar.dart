import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import '../provider/navigation_bar_current.dart';

class CustomButtonNavitaionBar extends StatelessWidget {
  const CustomButtonNavitaionBar({super.key});

  @override
  Widget build(BuildContext context) {

    final navigation = Provider.of<NavigationBarCurrent>(context);

    // return BottomNavigationBar(
    //   currentIndex: navigation.currentIndex,
    //   backgroundColor: const Color.fromARGB(255, 116, 25, 18),
    //   selectedItemColor: Colors.white,
    //   onTap: (value) {
    //     navigation.currentIndex = value;
    //   },

    //   items: const [
    //       BottomNavigationBarItem(icon: Icon(Icons.payments_outlined), label: 'Prestamos'),
    //       BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Clientes'),
    //       BottomNavigationBarItem(icon: Icon(Icons.money_off_csred_rounded), label: 'Gastos'),
    //   ], 
    // );
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Color.fromARGB(255, 116, 25, 18),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.attach_money,
                  text: 'Prestamos',
                ),
                GButton(
                  icon: Icons.people_alt_outlined,
                  text: 'Clientes',
                ),
                GButton(
                  icon: Icons.done_outline_rounded,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.money_off,
                  text: 'Gastos',
                ),
                
              ],
              selectedIndex: navigation.currentIndex,
              onTabChange: (index) {
                navigation.currentIndex = index;
              },
            ),
          ),
        )
    );
  }
}