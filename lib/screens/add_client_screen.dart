import 'package:flutter/material.dart';

import '../ui/input_decoration.dart';

class AddClientScreen extends StatelessWidget {
  const AddClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Añadir Nuevo Cliente'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              PhysicalModel(
                color: const Color.fromRGBO(0, 0, 0, 0.1),
                child: TextFormField(
                  autocorrect: false,
                  decoration: InputDecorations.authInputDecoration(labelText: 'Posición'),
                ),
              ),
              const SizedBox(height: 20,),
              PhysicalModel(
                color: const Color.fromRGBO(0, 0, 0, 0.1),
                child: TextFormField(
                  autocorrect: false,
                  decoration: InputDecorations.authInputDecoration(labelText: 'Identificación Cliente'),
                ),
              ),
              const SizedBox(height: 20,),
              PhysicalModel(
                color: const Color.fromRGBO(0, 0, 0, 0.1),
                child: TextFormField(
                  autocorrect: false,
                  decoration: InputDecorations.authInputDecoration(labelText: 'Nombre Cliente'),
                ),
              ),
              const SizedBox(height: 20,),
              PhysicalModel(
                color: const Color.fromRGBO(0, 0, 0, 0.1),
                child: TextFormField(
                  autocorrect: false,
                  decoration: InputDecorations.authInputDecoration(labelText: 'Dirección'),
                ),
              ),
              const SizedBox(height: 20,),
              PhysicalModel(
                color: const Color.fromRGBO(0, 0, 0, 0.1),
                child: TextFormField(
                  autocorrect: false,
                  decoration: InputDecorations.authInputDecoration(labelText: 'Número de telefono'),
                ),
              ),
              const SizedBox(height: 20,),
              PhysicalModel(
                color: const Color.fromRGBO(0, 0, 0, 0.1),
                child: TextFormField(
                  autocorrect: false,
                  decoration: InputDecorations.authInputDecoration(labelText: 'Tipo de Venta'),
                ),
              ),
              const SizedBox(height: 20,),
              PhysicalModel(
                color: const Color.fromRGBO(0, 0, 0, 0.1),
                child: TextFormField(
                  autocorrect: false,
                  decoration: InputDecorations.authInputDecoration(labelText: 'Valor de la venta'),
                ),
              ),
              const SizedBox(height: 20,),
              PhysicalModel(
                color: const Color.fromRGBO(0, 0, 0, 0.1),
                child: TextFormField(
                  autocorrect: false,
                  decoration: InputDecorations.authInputDecoration(labelText: 'Número de Cuotas'),
                ),
              ),
              const SizedBox(height: 20,),
              MaterialButton(
                onPressed: () {
                  
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                disabledColor: Colors.grey,
                elevation: 2,
                color: Colors.red,
                height: 60,
                child: Container(
                  child: const Center(child: Text('Registrar venta')),
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}