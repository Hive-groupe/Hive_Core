import 'package:flutter/material.dart';

class FailInfoScreen extends StatefulWidget {
  @override
  _FailInfoScreenState createState() => _FailInfoScreenState();
}

class _FailInfoScreenState extends State<FailInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
            ),
            Container(
              child: Text(
                  'Somos conscientes de que existe un problema que impide avanzar hasta la pagina principal tras iniciar sesión o registrarse.'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                  'No te preocupes, estamos trabajando en ello, para nosotros la prioridad es garantizar la seguridad y pricacidad de tus datos'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'Si cierras la aplicación y vuelves a abrirla, veras que tu usuario fue logeado correcatamente',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
