
import 'package:evaluacion/main.dart';
import 'package:evaluacion/screens/pantalla2.dart';
import 'package:evaluacion/screens/pantalla3.dart';
import 'package:flutter/material.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer ({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Text('Pantalla Principal'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => evaluacion())),
          ),
          ListTile(
            title: Text('Pantalla 2-Velocidad Inicial y Final'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => pantalla2() )),
          ),
          ListTile(
            title: Text('Pantalla 3-Presion de un submarino'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => pantalla3())),
          ),

        ],
      ),
    );
  }
}