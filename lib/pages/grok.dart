import 'package:flutter/material.dart';

class PageGrok extends StatelessWidget {
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
          title: Text('Grok'),
        ),
        body: Center(
          child: Text('¡Esto es Grok!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}