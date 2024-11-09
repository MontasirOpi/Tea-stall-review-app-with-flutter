import 'package:flutter/material.dart';
import 'package:tea_stall/screens/home_screen.dart';

class TeaStallApp extends StatefulWidget {
  const TeaStallApp({super.key});

  @override
  State<TeaStallApp> createState() => _TeaStallAppState();
}

class _TeaStallAppState extends State<TeaStallApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    );
  }
}