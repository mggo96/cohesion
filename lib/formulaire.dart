import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Séparée'),
      ),
      body: Center(
        child: Text('Bienvenue dans la page séparée!'),
      ),
    );
  }
}
