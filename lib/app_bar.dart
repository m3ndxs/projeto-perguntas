import 'package:flutter/material.dart';

class AppBarPerguntas extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;

  const AppBarPerguntas({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 300,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1, 3.0),
            end: Alignment(1, -0.75),
            colors: const [
              Color(0xFF050A5C),
              Color(0xFF08168A),
              Color(0xFF0A1FA0),
              Color(0xFF00B4E6),
            ],
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          titulo,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
