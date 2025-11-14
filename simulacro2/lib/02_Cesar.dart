
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
      body: Center(child: SizedBox(
        width: 500,
        height: 500,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 40, color: Colors.black,),
                    Text("Perfil de usuario")
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                width: 100,
                height: 100,
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.star, size: 40, color: Colors.black,),
                    Text("Puntos: 120")
                  ],
                ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications, size: 40, color: Colors.black,),
                    Text("Notificaciones: 5")
                  ],
                )
                ]
                )
              ),
              Divider(),
              SizedBox(
                child: ElevatedButton( 
                  onPressed: () { 
                  },
                  child: Text("Editar Perfil"),
                ),
              ),
              Divider(),
              SizedBox(
                width: 100,
                height: 100,
                child: Column( 
                  children: [
                  Column(
                  
                  children: [
                    Text("Opciones rapidas"),
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.folder, size: 40, color: Colors.black,),
                            Text("Archivos")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.settings, size: 40, color: Colors.black,),
                            Text("Ajustes")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.help_outline_outlined, size: 40, color: Colors.black,),
                            Text("Ayuda")
                          ],
                        )
                      ],
                    )
                  ]
                  )
                ]
                )
              )
            ],
          ),
        ),
        )),
    );
  }
}
