import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {

  //establecer el nombre de la ruta de este screen
  static const String routeName = 'Settings';
   
  const SettingsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Settings')),
      ),
      body: const Center(
         child: Text('SttingsScreen'),
      ),
    );
  }
}