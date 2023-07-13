import 'package:aatrox_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../provider/navigation_bar_current.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSizeWidgets.newMethod(context),
      body: const _HomeScreenBody(),
      bottomNavigationBar: const CustomButtonNavitaionBar() 
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
        return const ListViewBuilderLoans();

      case 1:
        return const ListViewBuilderClients();
      
      default:
        return const ListViewBuilderLoans();
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
