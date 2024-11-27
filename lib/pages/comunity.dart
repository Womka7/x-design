import 'package:flutter/material.dart';

class PageComunity extends StatelessWidget {
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
          title: Text('Comunidades'),
        ),
        body: Center(
          child: Text('¡Estas son las comunidades de X!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}