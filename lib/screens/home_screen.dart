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
      appBar: PreferredSizeWidgets.newMethod(context),
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
        return ListViewBuilderLoans();
      
      case 1:
        return ListViewBuilderClients();



        
      default:
        return ListViewBuilderLoans();
    }
  }
}

class PreferredSizeWidgets {
  

  


  static AppBar newMethod(BuildContext context) {

    final provider = Provider.of<NavigationBarCurrent>(context);
    final currentIndex =provider.currentIndex;


    switch(currentIndex){
      case 0:
        return AppBarCustom.loan(context);
      
      case 1:
        return AppBarCustom.client(context);

      default:
        return AppBarCustom.loan(context);

    }

  }
}
