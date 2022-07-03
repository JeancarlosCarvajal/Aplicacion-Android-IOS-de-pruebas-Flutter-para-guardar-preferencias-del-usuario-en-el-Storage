import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {

  //establecer el nombre de la ruta de este screen
  static const String routeName = 'Settings';
   
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  // bool isDarkMode = false;
  // int gender = 1;
  // String name = 'Jean';

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
                value: Preferences.isDarkMode, // mueve el boton en on off
                title: const Text('DarkMode'),
                onChanged: ( value ){
                  Preferences.isDarkMode = value;
                  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

                  // realmente se hace el cambio de estado aqui
                  value 
                    ? themeProvider.setDarkMode() 
                    : themeProvider.setLightMode();


                  print('Valor del DarkMode: ${Preferences.isDarkMode}');
                  // redibuja el statefulwidget
                  setState(() {});
                }
              ),
              const Divider(), // linea delgada divisoria
              // especificar el tipo de valor ya que es dinamico, este es entero
              RadioListTile<int>(
                value: 1, 
                groupValue: Preferences.gender, // es lo que cambia realmente, es parecido al name en los input radio de html, el nuemro aqui me dice cual esta activado
                title: const Text('Masculino'),
                onChanged: ( value ){
                  Preferences.gender = value ?? 1;
                  // redibuja el statefulwidget
                  setState(() {}); 
                }
              ),
              RadioListTile<int>(
                value: 2, 
                groupValue: Preferences.gender, // es lo que cambia realmente 
                title: const Text('Femenino'),
                onChanged: ( value ){
                  Preferences.gender = value ?? 2;
                  // redibuja el statefulwidget
                  setState(() {}); 
                }
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 20 ),
                child: TextFormField(
                  initialValue: Preferences.name, // esto es como un placeholder
                  onChanged: (value){
                    Preferences.name = value; // el value es el texto que esta ingresando
                    setState(() { });
                  },
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