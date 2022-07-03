import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/screen/screens.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() async{ // asyncrono para poder leer las preferencias de ususario
    // para poder usar el await evita error de flutter
    WidgetsFlutterBinding.ensureInitialized();
    // leyendo las preferencias de ususaario en todo el proyecto entero
    await Preferences.init();

    runApp(
      
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            // ThemeProvider le introducimos los valores al Provider para que haga el cambio de estado segun las preferencias
            create:(_) => ThemeProvider(isDarkMode: Preferences.isDarkMode)
          )
        ],
        child: const MyApp(),
      )
      
    );

  }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { // el build no puede ser asyncrono para acceder a las preferencias pero el main siiiiii puede jajajaj
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName    : (_) => const HomeScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme, // en settings_screen es donde se hace el cambio e estado
    );
  }
}