import 'package:flutter/material.dart';

class PageMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Mensajes'),
        ),
        body: Center(
          child: Text('¡Esto es la bienvenida de mensajes!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}