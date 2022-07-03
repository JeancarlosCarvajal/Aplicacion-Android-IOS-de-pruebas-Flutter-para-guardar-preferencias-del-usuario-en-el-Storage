


// puedes usar esto en todos los proyectos 
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  // el Static es para no instancias
 
  // late es para decirle a flutter que cuando la vaya a usar ya debe estar inicializada
  static late SharedPreferences _prefs;

  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;


  // en todo momento luego de haber llamado al init() vamos a tener acceso al name, isDarkMode, gender
  static Future init() async {
    // Obtain shared preferences.
    _prefs = await SharedPreferences.getInstance();
  }

  //Trabajar con getter y setters para guardar las preferencias

  // Obtain shared preferences.
  // final prefs = await SharedPreferences.getInstance();


  // no quiero que se instancie la instancia por eso es static
  static String get name {
    // Save an String value to 'action' key.
    return _prefs.getString('name') ?? '';
  }

  // modificamos la preferencia
  static set name (String value) {
    // actualizamos el valor de _name
    _name = value;
    // guardamos el valor de name en las preferencias del paquete
    _prefs.setString('name', value);
  }





  // no quiero que se instancie la instancia por eso es static
  static bool get isDarkMode {
    // Save an String value to 'action' key.
    // final bool? repeat = _prefs.getBool('repeat');
    return _prefs.getBool('isDarkMode') ?? false;
  }

  // modificamos la preferencia
  static set isDarkMode (bool value) {
    // actualizamos el valor de isDarkMode
    _isDarkMode = value;
    // guardamos el valor de name en las preferencias del paquete
    _prefs.setBool('isDarkMode', value);
  }



  
  // no quiero que se instancie la instancia por eso es static
  static int get gender {
    // Save an String value to 'action' key.
    // final bool? repeat = _prefs.getBool('repeat');
    return _prefs.getInt('gender') ?? 1;
  }

  // modificamos la preferencia
  static set gender (int value) {
    // actualizamos el valor de gender
    _gender = value;
    // guardamos el valor de name en las preferencias del paquete
    _prefs.setInt('gender', value);
  }



}