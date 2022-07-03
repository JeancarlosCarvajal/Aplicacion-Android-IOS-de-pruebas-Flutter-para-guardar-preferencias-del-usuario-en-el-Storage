import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

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
      drawer: const SideMenu(),
      // SingleChildScrollViewpara cajas de texto
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Ajustes', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
              const Divider(),
              // adaptativo para que se vea bien en el sistema operativo que se esta utilizando
              SwitchListTile.adaptive(
                value: true, // mueve el boton en on off
                title: const Text('DarkMode'),
                onChanged: ( value ){
                  
                }
              ),
              const Divider(), // linea delgada divisoria
              // especificar el tipo de valor ya que es dinamico, este es entero
              RadioListTile<int>(
                value: 1, 
                groupValue: 1, // es lo que cambia realmente 
                title: const Text('Masculino'),
                onChanged: ( value ){

                }
              ),
              RadioListTile<int>(
                value: 2, 
                groupValue: 1, // es lo que cambia realmente 
                title: const Text('Femenino'),
                onChanged: ( value ){

                }
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 20 ),
                child: TextFormField(
                  initialValue: 'Jeancarlos', // esto es como un placeholder
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario'
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}