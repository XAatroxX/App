import 'package:aatrox_app/ui/input_decoration.dart';
import 'package:aatrox_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric( horizontal: 20),
          child: Column(
            children: [
              const Center(
                child: _imageLogin(),
              ),
              const SizedBox(height: 30,),
              const Text('Ingresa con tu Cuenta', style: TextStyle(fontSize: 15),),
              const SizedBox(height: 20,),
      
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    PhysicalModel(
                      color: const Color.fromRGBO(0, 0, 0, 0.1),
                      child: TextFormField(
                        autocorrect: false,
                        decoration: InputDecorations.authInputDecoration(labelText: 'Correo Electronico'),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    PhysicalModel(
                      color: const Color.fromRGBO(0, 0, 0, 0.1),
                      child: TextFormField(
                        autocorrect: false,
                        decoration: InputDecorations.authInputDecoration(labelText: 'Contraseña'),
                      ),
                    ),
                    const SizedBox(height: 20,),
      
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'home');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      disabledColor: Colors.grey,
                      elevation: 2,
                      color: Colors.red,
                      height: 60,
                      
                      child: Container(
                        width: double.infinity,
                        //padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                        child: const Center(child: Text('Iniciar sesión')),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 60,),
      
              Container(
                child: Column(
                  children: [
                    const Center(child: Text('Tambien puedes ingresa con', style: TextStyle(fontSize: 15))),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          
                          elevation: 1,
                          color: Colors.white,
                          onPressed: () {
                            
                          },
                          child: Container(
                            
                            child: const Image(image: AssetImage('assets/google.png'), color: const Color.fromARGB(255, 136, 11, 11)),
                          ),
                        ),
                        MaterialButton(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          elevation: 1,
                          color: Colors.white,
                          onPressed: () {
                            
                          },
                          child: Container(
                            child: const Image(image: AssetImage('assets/facebook.png'), color: const Color.fromARGB(255, 136, 11, 11)),
                          ),
                        ),
                        MaterialButton(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          elevation: 1,
                          color: Colors.white,
                          onPressed: () {
                            
                          },
                          child: Container(
                            child: const Image(image: AssetImage('assets/twitter.png'), color: const Color.fromARGB(255, 136, 11, 11)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
              
              
            ],
          ),
        ),
      )
    );
  }
}

class _imageLogin extends StatelessWidget {
  const _imageLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      height: 100,
      width: 100,
      image: AssetImage('assets/aatrox.png'),
    );
  }
}