import 'package:flutter/material.dart';

class ContainerHome extends StatelessWidget {
  const ContainerHome({required this.text, required this.image});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 85,
            height: 100,
            child: Image.asset(image),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.0)),
          ),
          Text(text),
        ],
      ),
    );
  }
}
