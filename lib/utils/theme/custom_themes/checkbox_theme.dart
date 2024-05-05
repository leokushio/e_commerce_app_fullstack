import 'package:flutter/material.dart';

class TCheckboxThemeData {
  TCheckboxThemeData._();

  //-------------------light theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) => 
    states.contains(MaterialState.selected) 
    ? Colors.white
    : Colors.black
    ),
    fillColor: MaterialStateProperty.resolveWith((states) => 
    states.contains(MaterialState.selected) 
    ? Colors.blue
    : Colors.transparent
    ),
  );

  //---------------------dark theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) => 
    states.contains(MaterialState.selected) 
    ? Colors.white
    : Colors.black
    ),
    fillColor: MaterialStateProperty.resolveWith((states) => 
    states.contains(MaterialState.selected) 
    ? Colors.blue
    : Colors.transparent
    ),
  );
}