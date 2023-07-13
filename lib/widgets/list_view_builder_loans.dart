import 'package:flutter/material.dart';

class ListViewBuilderLoans extends StatelessWidget {
  const ListViewBuilderLoans({super.key});

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Lunes a Viernes', style: TextStyle(color: Color.fromARGB(255, 116, 25, 18),),),
                      Row(
                        children: [
                          Icon(Icons.coronavirus_rounded),
                          Text('Codigo', style: TextStyle(color: Color.fromARGB(255, 116, 25, 18),),),
                        ],
                      )
                      
                    ],
                  ),
                  
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