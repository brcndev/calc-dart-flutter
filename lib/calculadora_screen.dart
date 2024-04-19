import 'package:flutter/material.dart';

class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  final valor1Controller = TextEditingController();
  final valor2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Calculadora",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: valor1Controller,
              decoration: const InputDecoration(label: Text("Primeiro Valor")),
            ),
            TextField(
              controller: valor2Controller,
              decoration: const InputDecoration(label: Text("Segundo Valor")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    double valor1 = double.parse(valor1Controller.text);
                    double valor2 = double.parse(valor2Controller.text);

                    double resultado = valor1 + valor2;

                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                              resultado.toString(),
                              style: const TextStyle(fontSize: 50),
                            ),
                          );
                        });
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    double valor1 = double.parse(valor1Controller.text);
                    double valor2 = double.parse(valor2Controller.text);

                    double resultado = valor1 - valor2;

                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                              resultado.toString(),
                              style: const TextStyle(fontSize: 50),
                            ),
                          );
                        });
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    double valor1 = double.parse(valor1Controller.text);
                    double valor2 = double.parse(valor2Controller.text);

                    double resultado = valor1 * valor2;

                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                              resultado.toString(),
                              style: const TextStyle(fontSize: 50),
                            ),
                          );
                        });
                  },
                  child: const Text(
                    "*",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    double valor1 = double.parse(valor1Controller.text);
                    double valor2 = double.parse(valor2Controller.text);

                    if (valor2 == 0) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              content: Text(
                                "Impossível divisão por zero",
                                style: TextStyle(fontSize: 50),
                              ),
                            );
                          });
                    } else {
                      double resultado = valor1 / valor2;

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(
                                resultado.toString(),
                                style: const TextStyle(fontSize: 50),
                              ),
                            );
                          });
                    }
                  },
                  child: const Text(
                    "/",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
