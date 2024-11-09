import 'package:flutter/material.dart';
import 'package:tea_stall/widgest/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(13, 148, 136, 1.0),
        title: const Text(
          'TeaStall Review',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      drawer:const  AppDrawer(),
      body: const Center(
        child: Text(
          'Home Screen Content',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

