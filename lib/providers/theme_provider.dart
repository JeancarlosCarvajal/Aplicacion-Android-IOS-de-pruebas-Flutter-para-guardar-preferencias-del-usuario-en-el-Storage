import 'package:flutter/material.dart';



class ThemeProvider extends ChangeNotifier {


  ThemeData currentTheme;


  ThemeProvider({
    required bool isDarkMode // aqui leeemos los datos que nos envia el usuario
  }) : currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();


  setLightMode(){
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkMode(){
    currentTheme = ThemeData.dark();
    notifyListeners();
  }



}