import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';

void main() {
  runApp(AccessRedefinedApp());
}

class AccessRedefinedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Access Redefined',
      theme: ThemeData(
        primaryColor: Color(0xFF9D174D),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFFC026D3), // Use secondary instead of accentColor
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
