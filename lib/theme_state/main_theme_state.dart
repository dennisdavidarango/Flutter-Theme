import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theming_app/theme_state/presentation/login/login_screen.dart';
import 'package:theming_app/theme_state/presentation/splash/splash_screen.dart';
import 'package:theming_app/theme_state/presentation/theme.dart';

class MainThemeState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _borderLight = OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: DeliveryColors.veryLightGrey,
          width: 1,
          style: BorderStyle.solid,
        ));

    final _borderDark = OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: DeliveryColors.grey,
          width: 1,
          style: BorderStyle.solid,
        ));

//LIGHT THEME

    final lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: DeliveryColors.white,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          headline6: TextStyle(
            fontSize: 22,
            color: DeliveryColors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      canvasColor: DeliveryColors.white,
      accentColor: DeliveryColors.purple,
      bottomAppBarColor: DeliveryColors.veryLightGrey,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: DeliveryColors.green,
        displayColor: DeliveryColors.green,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: _borderLight,
        enabledBorder: _borderLight,
        focusedBorder: _borderLight,
        contentPadding: EdgeInsets.zero,
        labelStyle: TextStyle(
          color: DeliveryColors.purple,
        ),
        hintStyle: GoogleFonts.poppins(
          color: DeliveryColors.lightGrey,
          fontSize: 10,
        ),
      ),
      iconTheme: IconThemeData(
        color: DeliveryColors.purple,
      ),
    );

//DARK THEME

    final darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: DeliveryColors.purple,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          headline6: TextStyle(
            fontSize: 22,
            color: DeliveryColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      canvasColor: DeliveryColors.grey,
      scaffoldBackgroundColor: DeliveryColors.dark,
      accentColor: DeliveryColors.white,
      bottomAppBarColor: Colors.transparent,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: DeliveryColors.green,
        displayColor: DeliveryColors.green,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: _borderDark,
        enabledBorder: _borderDark,
        focusedBorder: _borderDark,
        contentPadding: EdgeInsets.zero,
        labelStyle: TextStyle(
          color: DeliveryColors.white,
        ),
        fillColor: DeliveryColors.grey,
        filled: true,
        hintStyle: GoogleFonts.poppins(
          color: DeliveryColors.white,
          fontSize: 10,
        ),
      ),
      iconTheme: IconThemeData(
        color: DeliveryColors.white,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: SplashScreen(),
    );
  }
}
