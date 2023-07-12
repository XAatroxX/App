import 'package:aatrox_app/ui/input_decoration.dart';
import 'package:aatrox_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: _imageLogin(),
                ),
                SizedBox(height: 30,),
                Text('Ingresa con tu Cuenta', style: TextStyle(fontSize: 15),),
                SizedBox(height: 20,),
        
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      PhysicalModel(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        child: TextFormField(
                          autocorrect: false,
                          decoration: InputDecorations.authInputDecoration(labelText: 'Correo Electronico'),
                          
                        ),
                      ),
                      SizedBox(height: 20,),
                      PhysicalModel(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        child: TextFormField(
                          autocorrect: false,
                          decoration: InputDecorations.authInputDecoration(labelText: 'Correo Electronico'),
                        ),
                      ),
                      SizedBox(height: 20,),
        
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        disabledColor: Colors.grey,
                        elevation: 2,
                        color: Colors.red,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                          child: Text(
                            'Iniciar seción'
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 60,),
        
                Container(
                  child: Column(
                    children: [
                      Center(child: Text('Ingresa tambien con', style: TextStyle(fontSize: 15))),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            
                            elevation: 1,
                            color: Colors.white,
                            onPressed: () {
                              
                            },
                            child: Container(
                              
                              child: Image(image: AssetImage('assets/google.png'),),
                            ),
                          ),
                          MaterialButton(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            elevation: 1,
                            color: Colors.white,
                            onPressed: () {
                              
                            },
                            child: Container(
                              child: Image(image: AssetImage('assets/facebook.png')),
                            ),
                          ),
                          MaterialButton(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            elevation: 1,
                            color: Colors.white,
                            onPressed: () {
                              
                            },
                            child: Container(
                              child: Image(image: AssetImage('assets/twitter.png')),
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