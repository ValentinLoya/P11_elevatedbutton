import 'package:flutter/material.dart';

void main() {
  runApp(MyButton());
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Elevated Button",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFF7F7E8), // Fondo similar a la imagen
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 20), // Mueve el texto más arriba
              child: Text(
                "Valentin Loya Mat: 22308051281244",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 24), // Aumenta el tamaño de la fuente
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildOutlinedButton("Outlined Button", Colors.blue),
                SizedBox(width: 20),
                buildOutlinedIconButton(Icons.thumb_up, "Like", Colors.red),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextButton("Text Button", Colors.orange),
                SizedBox(width: 40),
                buildTextIconButton(Icons.favorite, "Favourite", Colors.purple),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildOutlinedButton("New Button", Colors.teal),
                SizedBox(width: 20),
                buildOutlinedIconButton(Icons.star, "Rate", Colors.pink),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextButton("More Info", Colors.brown),
                SizedBox(width: 40),
                buildTextIconButton(Icons.share, "Share", Colors.indigo),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOutlinedButton(String text, Color color) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: color),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(
            vertical: 15, horizontal: 30), // Aumenta el tamaño del botón
      ),
      child: Text(
        text,
        style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 18), // Aumenta el tamaño del texto
      ),
    );
  }

  Widget buildOutlinedIconButton(IconData icon, String text, Color color) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: color, size: 24), // Aumenta el tamaño del ícono
      label: Text(text,
          style: TextStyle(
              color: color, fontSize: 18)), // Aumenta el tamaño del texto
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: color),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(
            vertical: 15, horizontal: 30), // Aumenta el tamaño del botón
      ),
    );
  }

  Widget buildTextIconButton(IconData icon, String text, Color color) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: color, size: 24), // Aumenta el tamaño del ícono
      label: Text(text,
          style: TextStyle(
              color: color, fontSize: 18)), // Aumenta el tamaño del texto
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
            vertical: 15, horizontal: 30), // Aumenta el tamaño del botón
      ),
    );
  }

  Widget buildTextButton(String text, Color color) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 18), // Aumenta el tamaño del texto
      ),
    );
  }
}
