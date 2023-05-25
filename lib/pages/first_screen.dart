import 'package:flutter/material.dart';

import 'login_page.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Fondo(),
          Contenido()
        ],
      )
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff18203d),
            Color(0xff18203d),
          ],
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft
        )
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/phone.png',
            height: 250,
          ),
          const SizedBox(
            height: 20,
          ), 
          const Text(
              'Welcome to TGD !',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(height: 20,),
          const Text(
            'A one-stop portal for you to learn the latest technologies from SCRATCH',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              style: ButtonStyle(
                //minimumSize: MaterialStateProperty.all(Size(200, 50)), // Tamaño mínimo
                backgroundColor: MaterialStateProperty.all(Color(0xff17A589)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Forma redondeada
                  ),

                ),
                
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          )

        ],
      );
  }
}