import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../provider/navigation_bar_current.dart';

class CustomButtonNavitaionBar extends StatelessWidget {
  const CustomButtonNavitaionBar({super.key});

  @override
  Widget build(BuildContext context) {

    final navigation = Provider.of<NavigationBarCurrent>(context);
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
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: const Color.fromARGB(255, 116, 25, 18),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
              duration: const Duration(milliseconds: 400),
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