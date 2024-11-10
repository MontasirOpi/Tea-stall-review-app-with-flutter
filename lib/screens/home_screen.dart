import 'package:flutter/material.dart';
import 'package:tea_stall/utils/app_colors.dart';
import 'package:tea_stall/widgest/app_drawer.dart';
import 'package:tea_stall/widgest/slid_Image_widget.dart';
import 'package:tea_stall/utils/assetsPath.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> slidImage = [
    AssetsPath.tea,
    AssetsPath.tea2,
    AssetsPath.tea3,
    AssetsPath.tea4,
    AssetsPath.tea5,
  ];

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
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'জীবনটা ঠিক যেন এক কাপ চায়ের মতো, তার স্বাদ ঠিক তেমনটাই হবে যেমনটা আপনি সেটিকে বানাবেন।',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Photo Gallery ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            slidImageWidget(slidImage: slidImage),
            const SizedBox(height: 20),
            const Text(
              'Tea Stall Reviews',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.themeColor),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(204, 251, 241, 1.0),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Post a Review',
                      style: TextStyle(fontSize: 14, color: AppColors.themeColor),
                    ),
                    Text('Share your experience about a tea stall you\'ve visited!'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
