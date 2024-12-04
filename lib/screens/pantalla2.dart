import 'package:flutter/material.dart';

class pantalla2 extends StatelessWidget {
  const pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 2"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/gokublck.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Cuerpo(),
      ),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Ejercicio 2",
            style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 255, 255, 255))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: velocidadInicialInput(),
        ),
        vFInput(),
        calcularTiempoBtn(context),
      ],
    );
  }
}

TextEditingController velocidadInicial = TextEditingController();

Widget velocidadInicialInput() {
  return TextField(
    controller: velocidadInicial,
    decoration: InputDecoration(
        label: Text("Ingresar Velocidad Inicial"), border: OutlineInputBorder()),
  );
}

TextEditingController velocidadFinal = TextEditingController();

Widget vFInput() {
  return TextField(
    controller: velocidadFinal,
    decoration: InputDecoration(
      label: Text("Ingresar Velocidad Final", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
      border: OutlineInputBorder(),
    ),
  );
}

Widget calcularTiempoBtn(context) {
  return FilledButton(
      onPressed: () => calcularTiempo(context),
      child: Text("Calcular"),
      );
}

void calcularTiempo(context) {
  double velocidadInicialV = double.parse(velocidadInicial.text);
  double velocidadFinalV = double.parse(velocidadFinal.text);
  double tiempo = (velocidadFinalV - velocidadInicialV) / 10;
  if (tiempo > 10) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Resultado"),
          content: Text("El vehículo no aprueba la prueba de velocidad."),
        );
      },
    );
  } else if (tiempo <= 10) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Resultado"),
          content: Text("El vehículo aprueba la prueba de velocidad."),
        );
      },
    );
  }
}