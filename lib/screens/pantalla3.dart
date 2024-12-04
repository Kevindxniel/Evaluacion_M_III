import 'package:flutter/material.dart';

class pantalla3 extends StatelessWidget {
  const pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 02"),
      ),
      body: cuerpo(),
    );
  }
}

class cuerpo extends StatefulWidget {
  const cuerpo({super.key});

  @override
  State<cuerpo> createState() => _cuerpoState();
}

class _cuerpoState extends State<cuerpo> {
  final alturaController = TextEditingController();
  double presion = 0;

  void calcularPresion() {
    double altura = double.parse(alturaController.text);
    double d = 1025; 
    double g = 9.8; 
    presion = d * g * altura;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Presión"),
          content: Text("La presión es: ${presion.toString()} Pa"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://i.pinimg.com/originals/44/89/20/448920e3dd0a8181f497105e1ea833ce.gif"), 
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Text("Ingrese la altura:"),
          TextField(
            controller: alturaController,
          ),
          ElevatedButton(
            onPressed: calcularPresion,
            child: Text("Calcular Presion"),
          ),
        ],
      ),
    );
  }
}