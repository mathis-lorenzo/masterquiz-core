import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppStyle {
  static ThemeData get currentTheme => _light();

  static ThemeData _light() => ThemeData(
    iconTheme: const IconThemeData(color: AppColors.bluePalette),
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
    primarySwatch: AppColors.bluePalette,
    outlinedButtonTheme:
      OutlinedButtonThemeData(style: AppButtonStyle.outlinedButton),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppButtonStyle.elevatedButton,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.white,
      centerTitle: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        systemStatusBarContrastEnforced: true,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,
    fontFamily: 'EduVICWANTBeginner',
    // textTheme: GoogleFonts.pacificoTextTheme()
  );
}

class AppButtonStyle {
  static ButtonStyle elevatedButton = ElevatedButton.styleFrom(
    elevation: 10,
    primary: AppColors.bluePalette[ColorsType.buttonColor.value]!.withOpacity(0.5),
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
    minimumSize: const Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    )
  );

  static ButtonStyle elevatedButtonDesactivate = ElevatedButton.styleFrom(
    elevation: 0,
    primary: Colors.grey,
    onPrimary: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
    minimumSize: const Size.fromHeight(40)
  );
  static ButtonStyle whiteElevatedButton = ElevatedButton.styleFrom(
    elevation: 0,
    primary: Colors.white,
    onPrimary: AppColors.bluePalette,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
    minimumSize: const Size.fromHeight(40)
  );
  static ButtonStyle underlineTextButton = TextButton.styleFrom(
    elevation: 0,
    primary: Colors.grey,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
    textStyle: const TextStyle(
      decoration: TextDecoration.underline, fontWeight: FontWeight.w600),
    minimumSize: const Size.fromHeight(40)
  );
  static ButtonStyle outlinedButton = OutlinedButton.styleFrom(
    elevation: 0,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
    side: const BorderSide(color: AppColors.bluePalette),
    minimumSize: const Size.fromHeight(40)
  );
  static ButtonStyle whiteOutlinedButton = OutlinedButton.styleFrom(
    elevation: 0,
    primary: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
    side: const BorderSide(color: Colors.white),
    minimumSize: const Size.fromHeight(40)
  );
}