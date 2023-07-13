import 'package:flutter/material.dart';

class ListViewBuilderClients extends StatelessWidget {
  const ListViewBuilderClients({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        
        itemBuilder: (context, index) => Dismissible(
          key: UniqueKey(), 
          child: ListTile(
            onTap: () => Navigator.pushNamed(context, 'dataLoan'),
            leading: Text('${index+1}', style: TextStyle(fontSize: 40),),
            title: Container(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Address'),
                  Text('PhoneNumber'),
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