import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        
        itemBuilder: (context, index) => Dismissible(
          key: UniqueKey(), 
          child: ListTile(
            onTap: () => Navigator.pushNamed(context, 'dataLoan'),
            leading: Text('${index+1}', style: TextStyle(fontSize: 40),),
            title: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Address'),
                  Text('PhoneNumber'),
                  Text('Lunes a Viernes', style: TextStyle(color: const Color.fromARGB(255, 116, 25, 18),),),
                  Divider()
                ],
              ),
            ),
          )
        ),
        itemCount: 50,
        
      );
  }
}