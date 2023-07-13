import 'package:flutter/material.dart';

class AppBarCustom{

  static AppBar client( BuildContext context){
    return AppBar(
      title: Text('Aatrox'),
      actions: [
        IconButton(
          icon: const Icon(Icons.person_add),
          onPressed: () {
            Navigator.pushNamed(context, 'addClient');
          },
        ),
      ],
    );
  }

  static AppBar loan( BuildContext context){
    return AppBar(
      title: Text('Aatrox'),
      actions: [
        IconButton(
          icon: const Icon(Icons.attach_money_rounded),
          onPressed: () {
            Navigator.pushNamed(context, 'addLoan');
          },
        ),
      ],
    );
  }

}