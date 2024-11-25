import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

 heladoTap(){
    print("Hola gates");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black,
            child: Row(
              children: [
                // Icon(Icons.icecream, color:Colors.white, size: 50,)
                IconButton(onPressed: heladoTap, icon: Icon(Icons.icecream, color: Colors.white, size: 50,)),
                Text( 'Heladeria Gates',style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30), )
              ],
            ),
          )
        ],
      ),
    );
  }
}