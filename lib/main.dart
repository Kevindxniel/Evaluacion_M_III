import 'package:evaluacion/navegador/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(evaluacion());
}

class evaluacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: cuerpo(),
    );
  }
}

class cuerpo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Evaluación"),
      ),
      drawer: MiDrawer(),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://media.tenor.com/d7LYFiZZcQ0AAAAM/dragon-ball-super-black-gokou.gif",
                ),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              children: [
                Text("Nombre: ", style: TextStyle(fontSize: 30, color: Colors.black)),
                Text("Kevin Daniel Orbea Carrera", style: TextStyle(fontSize: 30, color: Colors.white)),
                Text("Usuario de GitHub: ", style: TextStyle(fontSize: 30, color: Colors.black)),
                Text("Kevindxniel", style: TextStyle(fontSize: 30, color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}