import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Экран Ками'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorButton(color: Colors.red, text: 'Красная'),
          ColorButton(color: Colors.yellow, text: 'Желтая'),
          ColorButton(color: Colors.blue, text: 'Синяя'),
        ],
      ),
    );
  }
}

class ColorButton extends StatelessWidget {
  final Color color;
  final String text;

  ColorButton({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondScreen(color: color),
          ),
        );
      },
      style: ElevatedButton.styleFrom(primary: color),
      child: Text(text),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final Color color;

  SecondScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Экран Мила'),
      ),
      backgroundColor: color,
      body: Center(
        child: Text(
          'Выбранный цвет',
          style: TextStyle(color: Colors.purple),
        ),
      ),
    );
  }
}
