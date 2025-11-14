
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Flutter',
      home: MyMainWidget(),
    );
  }
}

// 🔹 Clase principal
class MyMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget principal')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding( padding: EdgeInsetsGeometry.directional(top: 10), child: Text(
              'Misión Apolo 8 — 1968',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
            SizedBox(height: 10),
            Text(
              'Earthrise: la Tierra vista desde la Luna',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'El 24 de diciembre de 1968, mientras orbitaban la Luna, los astronautas del Apolo 8 presenciaron algo que nadie había visto jamás: la Tierra elevándose sobre el horizonte lunar. En ese instante capturaron la icónica fotografía Earthrise, que transformó para siempre la forma en que la humanidad se veía a sí misma en el cosmos.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Image(image: AssetImage('earthrise.webp'), width: 350,),
          ],
        ),
      ),
    );
  }
}
