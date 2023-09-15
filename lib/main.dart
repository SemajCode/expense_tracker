import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((fn) {
    var kColorScheme = ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 96, 59, 181),
    );
    var kdarkColorScheme = ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(255, 5, 99, 125),
    );

    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kdarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: kdarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kdarkColorScheme.primaryContainer),
          ),
            textTheme: const TextTheme().copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kdarkColorScheme.onSecondaryContainer,
              fontSize: 16,
            ),
          ),
        ),
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primaryContainer),
          ),
          textTheme: const TextTheme().copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 16,
            ),
          ),
        ),
        //themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: const Expenses(),
      ),
    );
  // });
}
