import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
    
  //establecer el nombre de la ruta de este screen
  static const String routeName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home')),
      ),
      body: const Center(
         child: Text('HomeScreen'),
      ),
    );
  }
}