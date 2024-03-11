import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get theme => ThemeData.light(useMaterial3: true).copyWith(
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      );
}
