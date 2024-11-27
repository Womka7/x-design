import 'package:flutter/material.dart';

class PageNotification extends StatelessWidget {
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
          title: Text('Notificaciones'),
        ),
        body: Center(
          child: Text('¡Esto tus notificaciones!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}