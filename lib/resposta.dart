import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelection;

  const Resposta(this.texto, this.onSelection, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 38, 57, 221),
            foregroundColor: Colors.white,
          ),
          onPressed: onSelection,
          child: Text(texto, style: TextStyle(fontSize: 22)),
        ),
      ),
    );
  }
}
