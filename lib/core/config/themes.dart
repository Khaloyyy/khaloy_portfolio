import 'package:flutter/material.dart';
import '../constants/utol_colors.dart' as colors;

class AppTheme {
  // constuctor
  const AppTheme({required this.context});

  final BuildContext context;

  // Theme Data
  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    // primarySwatch: Colors.grey,
    inputDecorationTheme: _inputDecoration,
    textTheme: _textTheme,
  );

  // Input Decoration Theme
  InputDecorationTheme get _inputDecoration => InputDecorationTheme(
    filled: true,
    fillColor: colors.textFieldBg,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: colors.textFieldBorder),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: colors.textFieldBorder),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(4.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
      borderRadius: BorderRadius.circular(4.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
      borderRadius: BorderRadius.circular(4.0),
    ),
  );

  // Costumize Text Style
  TextTheme get _textTheme => const TextTheme(
    // Labels
    labelSmall: TextStyle(fontFamily: 'Poppins-Regular'),

    labelMedium: TextStyle(fontFamily: 'Poppins-Regular'),

    labelLarge: TextStyle(fontFamily: 'Poppins-Regular'),

    // Headlines
    headlineSmall: TextStyle(fontFamily: 'Poppins-SemiBold'),

    headlineMedium: TextStyle(fontFamily: 'Poppins-SemiBold'),

    headlineLarge: TextStyle(fontFamily: 'Poppins-SemiBold'),
  );
}
