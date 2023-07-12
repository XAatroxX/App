import 'package:aatrox_app/screens/screens.dart';
import 'package:aatrox_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/navigation_bar_current.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aatrox', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: _HomeScreenBody(),
      bottomNavigationBar: CustomButtonNavitaionBar() 
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody({super.key});
  
  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<NavigationBarCurrent>(context);
    final currentIndex =provider.currentIndex;

    switch( currentIndex ){
      case 0:
        return ListViewBuilder();
      
      case 1:
        return ClientsScreen();

        
      default:
        return ListViewBuilder();
    }
  }
}

