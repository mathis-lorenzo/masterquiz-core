import 'package:flutter/material.dart';

class AppColors {

  static  const MaterialColor bluePalette =
      MaterialColor(_bluePalette, <int, Color>{
    1: Color(0xFFAFCFFF),
    2: Color(0xFF996ED0),
    3: Color(0xFFD1D1D1),

    50: Color(0xFFE0F8F0),
    100: Color(0xFFB3EED9),
    200: Color(0xFF80E3C0),
    300: Color(0xFF4DD7A6),
    400: Color(0xFF26CF93),
    500: Color(_bluePalette),
    600: Color(0xFF00C078),
    700: Color(0xFF00B96D),
    800: Color(0xFF00B163),
    900: Color(0xFF00A450),
  });
  static const int _bluePalette = 0xFFAFCFFF;

  static const MaterialColor error = MaterialColor(_errorValue, <int, Color>{
    1: Color(0xFFFEA7A7),
    2: Color(0xFFFC3D3D),
    3: Color(0xFFD1D1D1),

    50: Color(0xFFFFEAEA),
    100: Color(0xFFFECACA),
    200: Color(0xFFFEA7A7),
    300: Color(0xFFFE8383),
    400: Color(0xFFFD6969),
    500: Color(_errorValue),
    600: Color(0xFFFD4747),
    700: Color(0xFFFC3D3D),
    800: Color(0xFFFC3535),
    900: Color(0xFFFC2525),
  });
  static const int _errorValue = 0xFFFD4E4E;
}
