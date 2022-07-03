import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

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
      // drawer crea un menu lateral
      drawer: const SideMenu(), // para creae el menu lateral
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('isDarkMode: ${Preferences.isDarkMode}'),
        const Divider(),
        Text('Genero: ${Preferences.gender}'),
        const Divider(),
        Text('Nombre de Usuario: ${Preferences.name}'),
        const Divider()

      ],),
    );
  }
}