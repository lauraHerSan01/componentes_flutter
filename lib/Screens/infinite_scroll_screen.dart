import 'package:flutter/material.dart';

class InfiniteScollScreen extends StatefulWidget {
  const InfiniteScollScreen({super.key});

  @override
  State<InfiniteScollScreen> createState() => _InfiniteScollScreenState();
}

class _InfiniteScollScreenState extends State<InfiniteScollScreen> {
  @override
  Widget build(BuildContext context) {
    return const  Center(
      child: Text('Ventana con una lista infinita'),
    );
  }
}