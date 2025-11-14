
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

// 🔹 Widget personalizado
class CustomIconWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  CustomIconWidget({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child:Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
        color: Colors.white,
      ),
      padding: EdgeInsets.all(12),
      child: Column(mainAxisSize: MainAxisSize.min,
      children:[
        Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
          color: Colors.white,
        ),
        child: Icon(icon, size: 30)
      ), 
      Text(text, textAlign: TextAlign.center,)]),
    ));
  }
}

// 🔹 Clase principal
class MyMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget principal')),
      body: Center(child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomIconWidget(icon: Icons.work, text: "Work and Job"),
          SizedBox(width: 8),
          CustomIconWidget(icon: Icons.health_and_safety, text: "Health and Safety"),
          SizedBox(width: 8),
          CustomIconWidget(icon: Icons.home, text: "Home"),
        ],
      ))
    );
  }
}
