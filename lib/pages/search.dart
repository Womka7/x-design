import 'package:flutter/material.dart';

class PageSearch extends StatelessWidget {
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
          title: Text('Buscar'),
        ),
        body: Center(
          child: Text('¡Esto es Búsqueda de tendencias o info!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}