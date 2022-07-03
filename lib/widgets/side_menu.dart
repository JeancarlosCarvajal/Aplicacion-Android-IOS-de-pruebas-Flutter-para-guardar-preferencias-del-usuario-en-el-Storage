import 'package:flutter/material.dart';
import 'package:preferences_app/screen/home_screen.dart';
import 'package:preferences_app/screen/settings_screen.dart';

class SideMenu extends StatelessWidget {
   
  const SideMenu({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // toma todo el ancho de la imagen de fondo del menu lateral
          children: [

            const _DrawerHeader(),

            ListTile(
              leading: const Icon(Icons.pages_outlined),
              title: const Text('Home'),
              onTap: (){
                // Vamos a la pantalla seleccionada (Sin la flecha de la izquierda de regreso)
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),

            ListTile(
              leading: const Icon(Icons.people_outline),
              title: const Text('People'),
              onTap: (){
                // Navigator.pushNamed(context, SettingsScreen.routeName);
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              onTap: (){
                // para cerrar el menu cuando se navege a otra pagina .pop
                // Navigator.pop(context);
                // Vamos a la pantalla seleccionada (Apaprece con la flecha de la izquierda)
                // Navigator.pushNamed(context, SettingsScreen.routeName);
                // Vamos a la pantalla seleccionada (Sin la flecha de la izquierda de regreso)
                Navigator.pushReplacementNamed(context, SettingsScreen.routeName);
                
              },
            ),

          ],
        ),
      );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover
        ), 
      ),
    );
  }
}