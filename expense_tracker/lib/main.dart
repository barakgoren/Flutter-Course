import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(255, 0, 52, 58));

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 0, 52, 58),
);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.primaryContainer,
          foregroundColor: kDarkColorScheme.onPrimaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          color: kDarkColorScheme.secondaryContainer,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.onPrimary,
            foregroundColor: kDarkColorScheme.primary,
          ),
        ),
        textTheme: const TextTheme().copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorScheme.onPrimaryContainer,
            fontSize: 22,
          ),
          bodyMedium: TextStyle(
            color: kColorScheme.onSecondaryContainer,
          ),
        ),
        iconTheme: const IconThemeData().copyWith(
          color: kColorScheme.onSecondaryContainer,
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          color: kColorScheme.secondary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.onPrimary,
            foregroundColor: kColorScheme.primary,
          ),
        ),
        textTheme: const TextTheme().copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorScheme.onPrimaryContainer,
            fontSize: 22,
          ),
          bodyMedium: const TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
        ),
      ),
      home: const Expenses(),
    ),
  );
}
