import 'package:flutter/material.dart';


class PostReviewScreen extends StatefulWidget {
  const PostReviewScreen({super.key});

  @override
  State<PostReviewScreen> createState() => _PostReviewScreenState();
}

class _PostReviewScreenState extends State<PostReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
     
      
      body: Text('Review'),
    );
  }
}